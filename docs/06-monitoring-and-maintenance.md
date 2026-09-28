# Phase 5: Monitoring & Maintenance

**Status:** Completed

## Objectives

- Establish ongoing hygiene practices
- Define a sustainable update and snapshot cadence
- Document residual risks and operational procedures
- Capture lessons learned

## Update Cadence

| Frequency     | Action                                      | Notes |
|---------------|---------------------------------------------|-------|
| Weekly        | `sudo apt update && sudo apt full-upgrade -y` | Keep tools and security patches current |
| Monthly       | Review UFW rules + listening ports          | `sudo ufw status verbose` + `ss -tulpn` |
| After major CTF / tool install | Take a new snapshot                    | Easy rollback point |
| As needed     | Re-run rootkit scanners                     | `sudo rkhunter -c --sk` / `sudo chkrootkit` |

## Snapshot Strategy

**Long-term snapshots (keep):**
- `01-after-full-update`
- `02-immediate-basics-complete`
- `03-network-hardening-complete`
- `04-access-control-complete`
- `05-system-hardening-complete`

**Ongoing practice:**
- Create short-lived snapshots before installing major new tools or starting large experiments
- Delete experimental snapshots once the change is confirmed working
- Treat the Phase snapshots as reliable restore points

## How to Safely Add New Tools

1. Take a snapshot first
2. Install the tool via `apt` when possible (preferred over manual downloads)
3. Check for default credentials and change them immediately
4. Review whether the tool opens any network ports (`ss -tulpn`)
5. Update UFW if a new inbound port is truly required
6. Re-run a quick rootkit scan if the tool is large or comes from outside the official repositories
7. Take a new snapshot once everything looks good

## Residual Risks

Even after hardening, this Kali VM retains residual risk because:

- It contains a large collection of powerful offensive tools
- It is a rolling-release distribution (frequent changes)
- Some tools still use default credentials until first use and manual hardening
- AppArmor has many profiles in complain/unconfined mode (normal for desktop Kali)
- The original `kali` user still exists (planned for later removal)

The goal of this project was **risk reduction**, not turning Kali into a production-grade hardened server.

## Logging Notes

- System logs remain available via `journalctl`
- UFW logs can be reviewed with `sudo tail -f /var/log/ufw.log` (if logging is enabled)
- For deeper auditing later, `auditd` can be installed, but it is not required for normal CTF use

---

*Previous: [System & Kernel Hardening](05-system-and-kernel-hardening.md)*  
*See also: [Lessons Learned](lessons-learned.md)*
