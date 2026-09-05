# Phase 3: Access Control

**Status:** Pending

## Objectives

- Control remote access paths
- Eliminate weak authentication methods
- Secure or remove the SSH service
- Address tool-specific default credentials

## Why This Matters

SSH is the most common remote entry point. Default or weak authentication on SSH (or on tools that expose web interfaces/databases) is a frequent cause of compromise.

## Planned Steps

1. Decide whether SSH is required
   - If **not required**: disable and/or remove `openssh-server`
   - If **required**: harden aggressively
2. SSH hardening (when needed):
   - Key-based authentication only
   - Disable password authentication
   - Disable root login
   - Reduce MaxAuthTries
   - Optional: non-standard port + Fail2Ban
3. Change default credentials for common tools:
   - Metasploit (postgres)
   - BeEF
   - BloodHound
   - Empire / Starkiller
   - Others as discovered
4. Review sudo configuration and user accounts

## Snapshot Recommendation

`03-access-control-complete`

---

*Previous: [Network Hardening](03-network-hardening.md)*  
*Next: [System & Kernel Hardening](05-system-and-kernel-hardening.md)*
