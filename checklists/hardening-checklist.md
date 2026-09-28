# Kali VM Hardening Checklist

Use this checklist to track progress. Check items off as they are completed and verified.

## Phase 0 – Preparation & Baseline
- [x] Environment details recorded in README
- [x] Clean snapshot taken (`01-after-full-update`)
- [ ] Baseline system information collected (optional – can use `scripts/baseline-info.sh`)
- [x] Scope decisions made (No SSH needed, keep NAT, new username `hankhacks`)

## Phase 1 – Immediate Basics
- [x] Full system update completed (`apt full-upgrade` + autoremove + autoclean)
- [x] New user `hankhacks` created with sudo privileges
- [x] Hostname changed to `hankslab`
- [x] `/etc/hosts` updated
- [x] DHCP hostname sending disabled
- [x] SSH server removed (not needed)
- [x] Snapshot taken after Phase 1 (`02-immediate-basics-complete`)

## Phase 2 – Network Hardening
- [x] MAC address randomization enabled
- [x] UFW installed
- [x] UFW default policies set (deny incoming / allow outgoing)
- [x] Required ports/services explicitly allowed (none needed)
- [x] UFW enabled and status verified
- [x] Listening ports reviewed
- [x] Snapshot taken after Phase 2 (`03-network-hardening-complete`)

## Phase 3 – Access Control
- [x] Decision made on SSH → Removed entirely
- [x] Metasploit database initialized and verified
- [x] Optional tools (Empire, OpenVAS) deferred until needed
- [x] Snapshot taken after Phase 3 (`04-access-control-complete`)

## Phase 4 – System & Kernel Hardening
- [x] AppArmor status confirmed
- [x] Sysctl hardening applied
- [x] Unattended upgrades enabled
- [x] OpenSSL Strong Security option evaluated (not available in current kali-tweaks – left default for CTF compatibility)
- [x] Rootkit scanners (rkhunter + chkrootkit) installed and baselined
- [x] Snapshot taken after Phase 4 (`05-system-hardening-complete`)

## Phase 5 – Monitoring & Maintenance
- [x] Logging approach documented
- [x] Update cadence defined
- [x] Ongoing snapshot strategy defined
- [x] Residual risks documented
- [x] Lessons learned updated

## Final
- [x] Main README status table updated
- [ ] Screenshots added (where useful)
- [x] Repository pushed to GitHub
- [x] Final review of documentation for clarity and completeness
- [ ] Old `kali` user removed (planned for later)
