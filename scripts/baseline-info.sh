#!/usr/bin/env bash
# baseline-info.sh
# Collects useful system information for documentation purposes.
# Run with: bash scripts/baseline-info.sh
# Review output before sharing — sanitize if needed.

set -euo pipefail

echo "=== Kali VM Baseline Information ==="
echo "Collected: $(date)"
echo

echo "--- Identity ---"
hostnamectl 2>/dev/null || true
echo "User: $(whoami)"
id
echo

echo "--- OS & Kernel ---"
cat /etc/os-release
echo
uname -a
echo

echo "--- Network ---"
ip -br a
echo
ip r
echo
echo "Resolv.conf:"
cat /etc/resolv.conf 2>/dev/null || true
echo

echo "--- Listening Ports ---"
ss -tulpn 2>/dev/null || netstat -tulpn 2>/dev/null || true
echo

echo "--- Running Services (summary) ---"
systemctl list-units --type=service --state=running --no-pager 2>/dev/null | head -30
echo

echo "--- Package Count ---"
echo "Installed packages: $(dpkg -l 2>/dev/null | grep -c '^ii' || echo 'unknown')"
echo

echo "=== End of Baseline ==="
echo "Tip: Redirect output to a file, e.g. bash scripts/baseline-info.sh > baseline-$(date +%Y%m%d).txt"
