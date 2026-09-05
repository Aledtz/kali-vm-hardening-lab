# Phase 4: System & Kernel Hardening

**Status:** Pending

## Objectives

- Reduce unnecessary attack surface at the OS level
- Apply kernel and system hardening parameters
- Enable security frameworks (AppArmor)
- Automate security updates

## Planned Steps

1. Review and disable unnecessary services
2. Confirm AppArmor status and enforce profiles where possible
3. Apply recommended sysctl hardening settings
4. Enable unattended upgrades for security patches
5. Use `kali-tweaks` to set OpenSSL to Strong Security mode (if legacy protocol support is not required)
6. Optional: Install and baseline rootkit scanners (rkhunter / chkrootkit)

## Snapshot Recommendation

`04-system-hardening-complete`

---

*Previous: [Access Control](04-access-control.md)*  
*Next: [Monitoring & Maintenance](06-monitoring-and-maintenance.md)*
