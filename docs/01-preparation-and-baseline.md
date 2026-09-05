# Phase 0: Preparation & Baseline

**Status:** Completed

## Objectives

- Establish a known-good starting point
- Capture system information for documentation
- Create a reliable rollback point (VM snapshot)
- Confirm environment details

## Why This Matters

Hardening without a baseline makes it difficult to measure progress or recover from mistakes. A clean snapshot taken *before* any changes is the single most important safety control in this entire project.

## Environment Details (Recorded)

| Item                  | Value                                      |
|-----------------------|--------------------------------------------|
| Distribution          | Kali Linux (rolling)                       |
| Installation Type     | Official pre-built VM image                |
| Hypervisor            | VMware Workstation Pro                     |
| Network Mode          | NAT                                        |
| Primary User          | `kali` (non-root with sudo)                |
| Snapshot Name         | `01-after-full-update`                     |
| Snapshot Description  | Clean pre-built image + full apt upgrade + autoremove + autoclean |

## Steps Completed

### 1. Confirm Environment Details
- [x] Hypervisor, install type, and network mode recorded
- [x] Snapshot taken after initial system update

### 2. Take a Clean Snapshot
- [x] Snapshot `01-after-full-update` created in VMware Workstation Pro

### 3. Gather Baseline Information
Still recommended (can be done later):
```bash
bash scripts/baseline-info.sh > baseline-$(date +%Y%m%d).txt
```

### 4. Scope Decisions (to be confirmed)
- [ ] Will this VM need SSH access from the host or other lab machines?
- [ ] Will it ever be placed on a network with other systems I care about?
- [ ] Am I using the default `kali` user or will I create a custom username?
- [ ] Do I plan to use the full “everything” metapackage or a lighter set of tools?

## Verification

- [x] Clean snapshot exists and is documented
- [x] Environment table in README is filled out
- [ ] Baseline outputs captured (optional but recommended)

## Next Phase

Proceed to [Phase 1: Immediate Basics](02-immediate-basics.md).  
Note: The full system update has already been completed as part of this baseline.
