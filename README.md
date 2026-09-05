# Kali Linux VM Hardening Lab

**A practical, documented home-lab project focused on hardening a fresh Kali Linux virtual machine for safe, responsible use.**

![Kali Linux](https://img.shields.io/badge/Kali-Linux-blue?logo=kalilinux&logoColor=white)
![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)
![License](https://img.shields.io/badge/License-MIT-green)

> **Author:** [Aledtz](https://github.com/Aledtz)  
> **Goal:** Demonstrate real-world Linux security hardening skills while creating a safer attacker machine for personal cybersecurity labs.

---

## Project Overview

Kali Linux is an excellent penetration testing distribution, but out of the box (especially pre-built VM images) it prioritizes convenience and tool availability over security posture. Leaving defaults in place is a common and dangerous mistake.

This repository documents a structured, progressive hardening process for a Kali Linux VM used in a home lab environment. Every step includes:

- **What** is being done
- **Why** it matters
- Exact commands
- Verification steps
- Trade-offs and residual risks

The result is a more defensive, less noisy, and more professional Kali environment suitable for learning and authorized testing.

### Key Objectives

- Reduce the attack surface of a Kali VM
- Eliminate common low-hanging fruit (default credentials, predictable hostname, open services, etc.)
- Apply defense-in-depth principles
- Produce clean, resume-ready documentation
- Create a reproducible baseline that can be snapshotted and restored

---

## Environment

| Item              | Details                                      |
|-------------------|----------------------------------------------|
| Distribution      | Kali Linux (rolling)                         |
| Installation Type | Official pre-built VM image                  |
| Hypervisor        | VMware Workstation Pro                       |
| Network Mode      | NAT                                          |
| Primary User      | Non-root (`kali`) with sudo                  |
| Snapshot          | `01-after-full-update` (full upgrade + autoremove + autoclean completed) |

---

## Hardening Phases

| Phase | Title                              | Status          | Documentation |
|-------|------------------------------------|-----------------|---------------|
| 0     | Preparation & Baseline             | Completed       | [docs/01-preparation-and-baseline.md](docs/01-preparation-and-baseline.md) |
| 1     | Immediate Basics                   | In Progress     | [docs/02-immediate-basics.md](docs/02-immediate-basics.md) |
| 2     | Network Hardening                  | Pending         | [docs/03-network-hardening.md](docs/03-network-hardening.md) |
| 3     | Access Control                     | Pending         | [docs/04-access-control.md](docs/04-access-control.md) |
| 4     | System & Kernel Hardening          | Pending         | [docs/05-system-and-kernel-hardening.md](docs/05-system-and-kernel-hardening.md) |
| 5     | Monitoring & Maintenance           | Pending         | [docs/06-monitoring-and-maintenance.md](docs/06-monitoring-and-maintenance.md) |

Detailed philosophy and approach: [docs/00-overview-and-philosophy.md](docs/00-overview-and-philosophy.md)

---

## Quick Start (For Readers)

1. Clone this repository.
2. Read the [Overview & Philosophy](docs/00-overview-and-philosophy.md).
3. Follow the phases in order.
4. **Always take a VM snapshot before each major phase.**
5. Use the [Hardening Checklist](checklists/hardening-checklist.md) to track progress.

---

## Repository Structure

```
kali-vm-hardening-lab/
├── README.md
├── LICENSE
├── docs/                   # Detailed phase guides
├── checklists/             # Tracking checklists
├── configs/                # Example configuration files
├── scripts/                # Helper scripts
└── screenshots/            # Visual documentation
```

---

## Disclaimer

This project is intended for **educational and authorized home-lab use only**.

- Only perform these steps on systems and networks you own or have explicit written permission to modify.
- Kali Linux remains a powerful offensive security toolkit. Hardening reduces risk but does not eliminate it.
- The author assumes no liability for misuse or damage resulting from following this documentation.

Use responsibly.

---

## Progress & Contributions

This is an active personal lab project. Documentation will be updated as each phase is completed and verified.

Feel free to open issues or suggestions. Pull requests that improve clarity, add verification steps, or fix errors are welcome.

---

**Created by [Aledtz](https://github.com/Aledtz)**  
*Building practical cybersecurity skills one lab at a time.*
