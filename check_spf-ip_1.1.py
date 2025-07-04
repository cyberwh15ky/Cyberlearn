# file: build_spf_full.py
import dns.resolver
from pathlib import Path

def parse_spf_record(domain):
    """
    解析 domain 的 TXT 記錄，回傳 (includes_set, ip4_set)
    include: / redirect: 都視為 include domain
    ip4: 都收集到 ip4_set
    """
    includes = set()
    ip4s = set()
    try:
        answers = dns.resolver.resolve(domain, 'TXT')
    except Exception as e:
        print(f"❌ DNS lookup failed for {domain}: {e}")
        return includes, ip4s

    for rdata in answers:
        txt = "".join(seg.decode('utf-8') for seg in getattr(rdata, 'strings', []))
        print(f"🔍 TXT record for {domain}:", txt)

        for token in txt.split():
            if token.startswith('include:'):
                includes.add(token.split(':',1)[1])
                print(f"   ↳ include: {token.split(':',1)[1]}")
            elif token.startswith('redirect='):
                includes.add(token.split('=',1)[1])
                print(f"   ↳ redirect: {token.split('=',1)[1]}")
            elif token.startswith('ip4:'):
                ip4s.add(token.split(':',1)[1])
                print(f"   ↳ ip4: {token.split(':',1)[1]}")
            # 如果需要支持 IPv6，也可以加：
            # elif token.startswith('ip6:'):
            #     ip6s.add(token.split(':',1)[1])

    return includes, ip4s

def main():
    base = Path(__file__).parent

    # 1. 讀取根 domains
    domains_file = base / 'domains.txt'
    if not domains_file.exists():
        print(f"❌ 找不到 {domains_file}，請先建立，內容每行一個 domain")
        return
    roots = [line.strip() for line in domains_file.read_text(encoding='utf-8').splitlines()
             if line.strip() and not line.startswith('#')]

    # 2. 第一輪：抓出所有直接 include/redirect，存到 spf_roots.txt
    first_level = set()
    print("=== 第一層 SPF include/redirect ===")
    for d in roots:
        incs, _ = parse_spf_record(d)
        print(f"Includes from {d}: {incs}\n")
        first_level |= incs

    spf_roots_file = base / 'spf_roots.txt'
    spf_roots_file.write_text('\n'.join(sorted(first_level)), encoding='utf-8')
    print(f"✅ 第一層結果已寫入：{spf_roots_file}\n")

    # 3. 第二輪：對第一層的每一個 domain，再 parse 一次
    incl_results_file = base / 'get_spf_includes_results.txt'
    ip4_results_file = base / 'spf_ip4_results.txt'
    with incl_results_file.open('w', encoding='utf-8') as fw_inc, \
         ip4_results_file.open('w', encoding='utf-8') as fw_ip4:

        print("=== 第二層 SPF include & 收集 ip4 ===")
        for root in sorted(first_level):
            incs2, ip4s = parse_spf_record(root)

            # 寫 include/redirect 結果
            line_inc = f"Includes from {root}: {incs2}"
            print(line_inc)
            fw_inc.write(line_inc + '\n')

            # 寫 ip4 結果
            if ip4s:
                for ip in sorted(ip4s):
                    fw_ip4.write(f"{root} => ip4:{ip}\n")
                print(f"   ↳ 收集到 ip4: {ip4s}\n")
            else:
                print(f"   ↳ 沒有發現 ip4\n")

    print(f"✅ 收集到的 include/redirect 已寫入：{incl_results_file}")
    print(f"✅ 收集到的 ip4 範圍 已寫入：{ip4_results_file}")

    # 3. 第二輪：先抓 include，再撈出 ip4 寫檔
    incl_results_file = base / 'get_spf_includes_results.txt'
    ip4_results_file = base / 'spf_ip4_results.txt'
    with incl_results_file.open('w', encoding='utf-8') as fw_inc, \
         ip4_results_file.open('w', encoding='utf-8') as fw_ip4:

        print("=== 第二層 SPF include & 收集 ip4 ===")
        # first_level 就是 _spf.google.com 解析出的那三個 netblocks domain
        for root in sorted(first_level):
            incs2, _ = parse_spf_record(root)

            # 寫 include 結果
            line_inc = f"Includes from {root}: {incs2}"
            print(line_inc)
            fw_inc.write(line_inc + '\n')

            # 「第 3 轮」：再 parse 這些 incs2 取 ip4
            for sub in sorted(incs2):
                _, ip4s3 = parse_spf_record(sub)
                if ip4s3:
                    for ip in sorted(ip4s3):
                        fw_ip4.write(f"{sub} => ip4:{ip}\n")
                    print(f"   ↳ {sub} 收集到 ip4: {ip4s3}")
                else:
                    print(f"   ↳ {sub} 沒有發現 ip4")


if __name__ == '__main__':
    main()
