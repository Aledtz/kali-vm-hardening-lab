# Kali VM Hardening Checklist

Use this checklist to track progress. Check items off as they are completed and verified.

## Phase 0 – Preparation & Baseline
- [ ] Environment details recorded in README
- [ ] Clean snapshot taken (`00-clean-install` or equivalent)
- [ ] Baseline system information collected
- [ ] Scope decisions made (SSH needed? Network exposure? Username?)

## Phase 1 – Immediate Basics
- [ ] Full system update completed (`apt full-upgrade`)
- [ ] Default password changed
- [ ] Hostname changed to non-obvious value
- [ ] `/etc/hosts` updated
- [ ] DHCP hostname sending disabled
- [ ] SSH host keys regenerated (if SSH present)
- [ ] Snapshot taken after Phase 1

## Phase 2 – Network Hardening
- [ ] MAC address randomization enabled
- [ ] UFW installed
- [ ] UFW default policies set (deny incoming / allow outgoing)
- [ ] Required ports/services explicitly allowed
- [ ] UFW enabled and status verified
- [ ] Listening ports reviewed
- [ ] Snapshot taken after Phase 2

## Phase 3 – Access Control
- [ ] Decision made on SSH (keep & harden **or** disable/remove)
- [ ] SSH hardened (keys only, no password auth, no root login) **or** removed
- [ ] Fail2Ban installed and configured (if SSH kept)
- [ ] Default credentials changed for Metasploit, BeEF, BloodHound, etc.
- [ ] Snapshot taken after Phase 3

## Phase 4 – System & Kernel Hardening
- [ ] Unnecessary services disabled/removed
- [ ] AppArmor status confirmed
- [ ] Sysctl hardening applied
- [ ] Unattended upgrades enabled
- [ ] OpenSSL Strong Security mode considered via `kali-tweaks`
- [ ] Optional rootkit scanner baseline performed
- [ ] Snapshot taken after Phase 4

## Phase 5 – Monitoring & Maintenance
- [ ] Logging approach documented
- [ ] Update cadence defined
- [ ] Ongoing snapshot strategy defined
- [ ] Residual risks documented
- [ ] Lessons learned updated

## Final
- [ ] Main README status table updated
- [ ] Screenshots added (where useful)
- [ ] Repository pushed to GitHub
- [ ] Final review of documentation for clarity and completeness
