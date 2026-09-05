# Phase 1: Immediate Basics

**Status:** Pending

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

## Steps (Outline – to be expanded during execution)

### 1. Full System Update
- `sudo apt update && sudo apt full-upgrade -y`
- Clean up: `sudo apt autoremove -y && sudo apt autoclean`

### 2. Change Default Password
- Change password for the current user
- Optionally set a strong password for root (or keep it locked)

### 3. Change Hostname
- Choose a non-obvious hostname
- Update `/etc/hosts`
- Prevent hostname leakage via DHCP

### 4. Regenerate SSH Host Keys (if SSH is installed)
- Move old keys aside
- Reconfigure openssh-server

### 5. Take a New Snapshot
Name suggestion: `01-immediate-basics-complete`

## Verification Checklist

- [ ] System fully updated
- [ ] Password changed and tested
- [ ] Hostname updated and verified (`hostnamectl`)
- [ ] SSH host keys regenerated (if applicable)
- [ ] New snapshot taken

## Notes & Decisions

*(Record any deviations or choices made during this phase)*

---

*Previous: [Preparation & Baseline](01-preparation-and-baseline.md)*  
*Next: [Network Hardening](03-network-hardening.md)*
