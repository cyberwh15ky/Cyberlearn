echo "=== Ubuntu 24.04 + Docker + Minikube 安裝與啟動腳本，你只要複製貼上就能跑。這會解決你遇到的 driver 問題，並讓 Minikube 正常啟動。 ==="

#!/bin/bash
set -e

echo "=== 更新系統 ==="
sudo apt update -y
sudo apt upgrade -y

echo "=== 安裝必要套件 ==="
sudo apt install -y curl wget apt-transport-https ca-certificates gnupg lsb-release

echo "=== 安裝 Docker ==="
sudo apt install -y docker.io
sudo systemctl enable docker
sudo systemctl start docker

echo "=== 將使用者加入 docker 群組 ==="
sudo usermod -aG docker $USER

echo "=== 安裝 kubectl ==="
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

echo "=== 安裝 Minikube ==="
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

echo "=== 完成安裝，請重新登入或執行 newgrp docker ==="
echo "然後執行: minikube start --driver=docker"
