# Phase 1: Immediate Basics

**Status:** In Progress

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

## Steps

### 1. Full System Update
**Status: Completed** (done before the `01-after-full-update` snapshot)

Commands that were run:
```bash
sudo apt update && sudo apt full-upgrade -y
sudo apt autoremove -y
sudo apt autoclean
```

### 2. Change Default Password
**Status: Pending**

- Change password for the current user (`passwd`)
- Optionally set a strong password for root (or keep it locked)

### 3. Change Hostname
**Status: Pending**

- Choose a non-obvious hostname
- Update `/etc/hosts`
- Prevent hostname leakage via DHCP

### 4. Regenerate SSH Host Keys (if SSH is installed)
**Status: Pending**

- Move old keys aside
- Reconfigure openssh-server

### 5. Take a New Snapshot
After the remaining steps are complete, take a new snapshot:  
Suggested name: `02-immediate-basics-complete`

## Verification Checklist

- [x] System fully updated
- [ ] Password changed and tested
- [ ] Hostname updated and verified (`hostnamectl`)
- [ ] SSH host keys regenerated (if applicable)
- [ ] New snapshot taken

## Notes & Decisions

- System update was performed on the fresh pre-built image before the first hardening snapshot.
- Snapshot `01-after-full-update` serves as the rollback point for the rest of Phase 1.

---

*Previous: [Preparation & Baseline](01-preparation-and-baseline.md)*  
*Next: [Network Hardening](03-network-hardening.md)*
