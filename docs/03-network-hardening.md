# Phase 2: Network Hardening

**Status:** Completed

## Objectives

- Reduce network fingerprinting
- Implement a strict host-based firewall
- Limit information leakage

## Why This Matters

Even a well-patched system can be identified and targeted by its network behavior. Predictable MAC addresses, hostname announcements, and open ports make a Kali VM stand out immediately on a network.

## Steps Completed

### 1. MAC Address Randomization
Enabled via NetworkManager:

```bash
sudo tee /etc/NetworkManager/conf.d/mac-randomize.conf > /dev/null <<EOF
[device]
wifi.scan-rand-mac-address=yes

[connection]
wifi.cloned-mac-address=random
ethernet.cloned-mac-address=random
EOF

sudo systemctl restart NetworkManager
```

MAC randomization takes effect on the next network reconnect or reboot.

### 2. UFW Firewall
Installed and configured with strict defaults:

```bash
sudo apt install ufw -y
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
```

**Result:** Status active – deny incoming, allow outgoing.

### 3. Hostname Leakage
Already handled in Phase 1 (hostname set to `hankslab` and DHCP hostname sending disabled).

### 4. Listening Ports
Reviewed with `ss -tulpn`. No unexpected services listening after SSH removal.

## Snapshot

- **Name:** `03-network-hardening-complete`
- **Description:** MAC randomization enabled + UFW active (deny incoming / allow outgoing)

## Verification

- [x] MAC randomization configured
- [x] UFW installed, enabled, and policies verified
- [x] Hostname leakage prevented
- [x] Listening ports reviewed
- [x] Snapshot taken

---

*Previous: [Immediate Basics](02-immediate-basics.md)*  
*Next: [Access Control](04-access-control.md)*
