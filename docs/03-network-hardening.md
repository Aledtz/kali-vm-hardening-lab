# Phase 2: Network Hardening

**Status:** Pending

## Objectives

- Reduce network fingerprinting
- Implement a strict host-based firewall
- Limit information leakage

## Why This Matters

Even a well-patched system can be identified and targeted by its network behavior. Predictable MAC addresses, hostname announcements, and open ports make a Kali VM stand out immediately on a network.

## Planned Steps (to be detailed during execution)

1. Enable MAC address randomization via NetworkManager
2. Install and configure UFW
   - Default deny incoming
   - Default allow outgoing
   - Explicitly allow only required services
3. Disable sending hostname via DHCP
4. Optional: Disable IPv6 if not required
5. Review and document listening ports before/after

## Snapshot Recommendation

Take a snapshot after successful UFW configuration and testing: `02-network-hardening-complete`

## Verification

- [ ] MAC randomization active
- [ ] UFW enabled and rules verified (`sudo ufw status verbose`)
- [ ] Hostname no longer sent via DHCP
- [ ] Only expected ports are listening

---

*Previous: [Immediate Basics](02-immediate-basics.md)*  
*Next: [Access Control](04-access-control.md)*
