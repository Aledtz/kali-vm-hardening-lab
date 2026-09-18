# Phase 1: Immediate Basics

**Status:** Completed

## Objectives

- Apply the highest-impact, lowest-effort security improvements
- Eliminate the most common default weaknesses
- Establish a unique system identity

## Why This Matters

These changes address issues that are actively and automatically exploited or fingerprintable:

- Default credentials are publicly documented
- Identical SSH host keys across all users of the same image
- Hostname “kali” is an immediate giveaway on any network

Completing this phase alone dramatically improves the security posture.

## Steps Completed

### 1. Full System Update
**Status: Completed**

```bash
sudo apt update && sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean
```

### 2. Change Default Password + Create New User
**Status: Completed**

- Created new user: `hankhacks`
- Added to sudo and common groups
- Successfully logged in as `hankhacks`
- Old `kali` user kept for now (to be removed later)

### 3. Change Hostname
**Status: Completed**

- Hostname set to: `hankslab`
- `/etc/hosts` updated
- Hostname leakage via DHCP disabled

### 4. SSH Server
**Status: Completed**

- SSH server stopped, disabled, and completely removed (`openssh-server` purged)
- No longer listening on port 22

### 5. Snapshot
**Status: Completed**

- Snapshot name: `02-immediate-basics-complete`

## Verification Checklist

- [x] System fully updated
- [x] New user `hankhacks` created and working with sudo
- [x] Hostname changed to `hankslab` and verified
- [x] SSH server removed
- [x] Snapshot `02-immediate-basics-complete` taken

## Notes & Decisions

- Chose not to use SSH → removed the service entirely for reduced attack surface.
- Kept the original `kali` user temporarily; will remove it in a later cleanup step.
- Network mode remains NAT (suitable for TryHackMe / Hack The Box).

---

*Previous: [Preparation & Baseline](01-preparation-and-baseline.md)*  
*Next: [Network Hardening](03-network-hardening.md)*
