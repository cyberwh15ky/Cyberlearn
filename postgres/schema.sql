-- Enable UUID & crypto (for gen_random_uuid)
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- =========================
-- 1. Users
-- =========================
CREATE TABLE IF NOT EXISTS users (
  user_id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name            VARCHAR(100) NOT NULL,
  email           VARCHAR(255) NOT NULL UNIQUE,
  phone_number    VARCHAR(20) UNIQUE,
  birth_date      DATE,
  password_hash   TEXT,
  google_oauth_id VARCHAR(255) UNIQUE,
  is_active       BOOLEAN DEFAULT TRUE,
  created_at      TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at      TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_users_email ON users (email);
CREATE INDEX IF NOT EXISTS idx_users_phone ON users (phone_number);

-- =========================
-- 2. TwoFactorAuth
-- =========================
CREATE TABLE IF NOT EXISTS two_factor_auth (
  user_id          UUID PRIMARY KEY REFERENCES users(user_id) ON DELETE CASCADE,
  totp_secret      VARCHAR(64) NOT NULL,
  sms_code_last    VARCHAR(6),
  sms_verified     BOOLEAN DEFAULT FALSE,
  last_verified_at TIMESTAMP
);

-- =========================
-- 3. Products
-- =========================
CREATE TABLE IF NOT EXISTS products (
  product_id     UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name           VARCHAR(255) NOT NULL,
  description    TEXT,
  price          NUMERIC(10,2) NOT NULL,
  stock_quantity INT DEFAULT 0,
  like_count     INT DEFAULT 0,
  created_at     TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at     TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_products_name ON products (name);

-- =========================
-- 4. Favorites
-- =========================
CREATE TABLE IF NOT EXISTS favorites (
  favorite_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id     UUID NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
  product_id  UUID NOT NULL REFERENCES products(product_id) ON DELETE CASCADE,
  created_at  TIMESTAMP NOT NULL DEFAULT NOW(),
  UNIQUE (user_id, product_id)
);

CREATE INDEX IF NOT EXISTS idx_favorites_user ON favorites (user_id);
CREATE INDEX IF NOT EXISTS idx_favorites_product ON favorites (product_id);

-- =========================
-- 4b. Likes
-- =========================
CREATE TABLE IF NOT EXISTS likes (
  like_id    UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id    UUID NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
  product_id UUID NOT NULL REFERENCES products(product_id) ON DELETE CASCADE,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  UNIQUE (user_id, product_id)
);

CREATE INDEX IF NOT EXISTS idx_likes_user ON likes (user_id);
CREATE INDEX IF NOT EXISTS idx_likes_product ON likes (product_id);

-- Optional: trigger to increment products.like_count on insert
CREATE OR REPLACE FUNCTION increment_like_count() RETURNS TRIGGER AS $$
BEGIN
  UPDATE products SET like_count = like_count + 1, updated_at = NOW()
  WHERE product_id = NEW.product_id;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION decrement_like_count() RETURNS TRIGGER AS $$
BEGIN
  UPDATE products SET like_count = GREATEST(like_count - 1, 0), updated_at = NOW()
  WHERE product_id = OLD.product_id;
  RETURN OLD;
END;
$$ LANGUAGE plpgsql;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_trigger WHERE tgname = 'likes_increment_trigger'
  ) THEN
    CREATE TRIGGER likes_increment_trigger
    AFTER INSERT ON likes
    FOR EACH ROW EXECUTE FUNCTION increment_like_count();
  END IF;
  IF NOT EXISTS (
    SELECT 1 FROM pg_trigger WHERE tgname = 'likes_decrement_trigger'
  ) THEN
    CREATE TRIGGER likes_decrement_trigger
    AFTER DELETE ON likes
    FOR EACH ROW EXECUTE FUNCTION decrement_like_count();
  END IF;
END;
$$;

-- =========================
-- 5. Cart
-- =========================
CREATE TABLE IF NOT EXISTS cart (
  cart_id    UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id    UUID NOT NULL REFERENCES users(user_id) ON DELETE CASCADE,
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE UNIQUE INDEX IF NOT EXISTS idx_cart_user_unique ON cart (user_id);

-- =========================
-- 5b. CartItems
-- =========================
CREATE TABLE IF NOT EXISTS cart_items (
  cart_item_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  cart_id      UUID NOT NULL REFERENCES cart(cart_id) ON DELETE CASCADE,
  product_id   UUID NOT NULL REFERENCES products(product_id) ON DELETE CASCADE,
  quantity     INT NOT NULL DEFAULT 1 CHECK (quantity > 0),
  reserved_at  TIMESTAMP NOT NULL DEFAULT NOW(),
  UNIQUE (cart_id, product_id)
);

CREATE INDEX IF NOT EXISTS idx_cart_items_cart ON cart_items (cart_id);
CREATE INDEX IF NOT EXISTS idx_cart_items_product ON cart_items (product_id);

-- =========================
-- 6. Orders
-- =========================
CREATE TABLE IF NOT EXISTS orders (
  order_id        UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id         UUID NOT NULL REFERENCES users(user_id) ON DELETE SET NULL,
  status          VARCHAR(50) NOT NULL DEFAULT 'pending',
  total_amount    NUMERIC(10,2) NOT NULL,
  payment_method  VARCHAR(50) NOT NULL, -- CreditCard / Alipay / PayMe / FPS
  shipping_method VARCHAR(50) NOT NULL, -- COD / Postal
  created_at      TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at      TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_orders_user ON orders (user_id);
CREATE INDEX IF NOT EXISTS idx_orders_status ON orders (status);

-- =========================
-- 6b. OrderItems
-- =========================
CREATE TABLE IF NOT EXISTS order_items (
  order_item_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  order_id      UUID NOT NULL REFERENCES orders(order_id) ON DELETE CASCADE,
  product_id    UUID NOT NULL REFERENCES products(product_id) ON DELETE SET NULL,
  quantity      INT NOT NULL CHECK (quantity > 0),
  price         NUMERIC(10,2) NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_order_items_order ON order_items (order_id);

-- =========================
-- 7. Payments
-- =========================
CREATE TABLE IF NOT EXISTS payments (
  payment_id     UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  order_id       UUID NOT NULL REFERENCES orders(order_id) ON DELETE CASCADE,
  provider       VARCHAR(50) NOT NULL, -- Stripe / Alipay / PayMe / FPS
  transaction_id VARCHAR(255) UNIQUE,
  status         VARCHAR(50) NOT NULL DEFAULT 'initiated', -- initiated/success/failed/refunded
  paid_at        TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_payments_order ON payments (order_id);
CREATE INDEX IF NOT EXISTS idx_payments_status ON payments (status);

-- =========================
-- 8. Shipping
-- =========================
CREATE TABLE IF NOT EXISTS shipping (
  shipping_id     UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  order_id        UUID NOT NULL REFERENCES orders(order_id) ON DELETE CASCADE,
  provider        VARCHAR(100) NOT NULL, -- SF Express / HK Post / Custom
  tracking_number VARCHAR(255) UNIQUE,
  status          VARCHAR(50) NOT NULL DEFAULT 'pending', -- pending/shipped/delivered
  shipped_at      TIMESTAMP,
  delivered_at    TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_shipping_order ON shipping (order_id);
CREATE INDEX IF NOT EXISTS idx_shipping_status ON shipping (status);

-- =========================
-- 9. POS (Future)
-- =========================
CREATE TABLE IF NOT EXISTS pos_terminals (
  pos_id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  store_location VARCHAR(255),
  terminal_id    VARCHAR(100) UNIQUE,
  synced_at      TIMESTAMP
);

-- =========================
-- 10. AI Logs
-- =========================
CREATE TABLE IF NOT EXISTS ai_logs (
  ai_log_id     UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id       UUID REFERENCES users(user_id) ON DELETE SET NULL,
  query_text    TEXT NOT NULL,
  response_text TEXT NOT NULL,
  created_at    TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_ai_logs_user ON ai_logs (user_id);
CREATE INDEX IF NOT EXISTS idx_ai_logs_created ON ai_logs (created_at);
