# Phase 4: System & Kernel Hardening

**Status:** Completed

## Objectives

- Reduce unnecessary attack surface at the OS level
- Apply kernel and system hardening parameters
- Enable security frameworks (AppArmor)
- Automate security updates

## Steps Completed

### 1. AppArmor
- Module loaded
- 20 profiles in enforce mode
- Many profiles in complain/unconfined mode (normal for a Kali desktop environment)
- No aggressive changes made (to avoid breaking tools)

### 2. Unattended Upgrades
- Package installed and enabled
- Automatic security updates configured

### 3. Sysctl Hardening
- Created `/etc/sysctl.d/99-hardening.conf` with common network and kernel hardening settings
- Settings applied successfully via `sysctl --system`

### 4. OpenSSL Configuration
- Attempted via `kali-tweaks` → Hardening menu
- “Strong Security / Wide Compatibility” option no longer present in current Kali version
- Left at default (wider compatibility) — preferred for CTF work so tools can still talk to older/vulnerable services

### 5. Rootkit Scanners
- Installed `rkhunter` and `chkrootkit`
- `rkhunter --update` failed (common issue — mirrors outdated)
- Local property database created with `--propupd`
- Both scanners run successfully (warnings expected on Kali)

## Snapshot

- **Name:** `05-system-hardening-complete`
- **Description:** AppArmor verified, unattended-upgrades enabled, sysctl hardening applied, rootkit scanners installed and baselined

## Verification

- [x] AppArmor status checked
- [x] Unattended upgrades enabled
- [x] Sysctl hardening applied
- [x] OpenSSL option evaluated (not available / left default)
- [x] Rootkit scanners installed and run
- [x] Snapshot taken

---

*Previous: [Access Control](04-access-control.md)*  
*Next: [Monitoring & Maintenance](06-monitoring-and-maintenance.md)*
