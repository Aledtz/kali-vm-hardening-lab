# Phase 0: Preparation & Baseline

**Status:** Pending

## Objectives

- Establish a known-good starting point
- Capture system information for documentation
- Create a reliable rollback point (VM snapshot)
- Confirm environment details

## Why This Matters

Hardening without a baseline makes it difficult to measure progress or recover from mistakes. A clean snapshot taken *before* any changes is the single most important safety control in this entire project.

## Steps

### 1. Confirm Environment Details

Record the following in the main README and here:

- Kali version: `cat /etc/os-release`
- Kernel: `uname -r`
- Hypervisor:
- Network adapter mode (NAT / Bridged / Host-only / Internal):
- Disk size and whether encryption was used at install time:
- Desktop environment (if any):

### 2. Take a Clean Snapshot

**Do this now.**

Name suggestion: `00-clean-install` or `phase0-baseline`

Document the snapshot name and date.

### 3. Gather Baseline Information

Run the helper script (once created) or collect manually:

```bash
# Basic identity
hostnamectl
whoami
id

# Network
ip a
ip r
cat /etc/resolv.conf

# Listening services
ss -tulpn

# Running services
systemctl list-units --type=service --state=running

# Installed package count (rough)
dpkg -l | wc -l
```

Save relevant output (sanitized) for later comparison.

### 4. Decide on Scope Questions

Answer these before proceeding:

- [ ] Will this VM need SSH access from the host or other lab machines?
- [ ] Will it ever be placed on a network with other systems I care about?
- [ ] Am I using the default `kali` user or will I create a custom username?
- [ ] Do I plan to use the full “everything” metapackage or a lighter set of tools?

## Verification

- [ ] Clean snapshot exists and is documented
- [ ] Environment table in README is filled out
- [ ] Baseline outputs captured

## Next Phase

Once the baseline is solid, proceed to [Phase 1: Immediate Basics](02-immediate-basics.md).
