# Kali Linux VM Hardening Lab

**A practical, documented home-lab project focused on hardening a fresh Kali Linux virtual machine for safe, responsible use.**

![Kali Linux](https://img.shields.io/badge/Kali-Linux-blue?logo=kalilinux&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![License](https://img.shields.io/badge/License-MIT-green)

> **Author:** [Aledtz](https://github.com/Aledtz)  
> **Goal:** Demonstrate real-world Linux security hardening skills while creating a safer attacker machine for personal cybersecurity labs.

---

## Project Summary

This repository documents the complete process of hardening a fresh Kali Linux virtual machine for safe use as a personal cybersecurity home lab.

Starting from the official pre-built Kali VM image, the project applies a structured, phased hardening approach covering:

- System updates and baseline configuration
- User and hostname hardening
- Removal of unnecessary services (including SSH)
- Host-based firewall (UFW)
- MAC address randomization
- Metasploit database setup
- AppArmor verification
- Kernel/sysctl hardening
- Automatic security updates
- Rootkit scanner baselines
- Ongoing maintenance and residual risk documentation

Every phase includes clear explanations of *what* was changed, *why* it matters, exact commands, verification steps, and trade-offs. Named VM snapshots were taken after each major phase to maintain easy rollback points.

The result is a more defensive, less noisy Kali environment suitable for TryHackMe, Hack The Box, and other authorized training while demonstrating practical Linux security and documentation skills.

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
| Hostname          | `hankslab`                                   |
| Primary User      | `hankhacks` (sudo)                           |
| SSH Server        | Removed                                      |
| Firewall          | UFW active (deny incoming / allow outgoing)  |
| Metasploit DB     | Initialized and connected                    |
| AppArmor          | Active (20+ profiles in enforce mode)        |
| Unattended Upgrades | Enabled                                    |
| Latest Snapshot   | `05-system-hardening-complete`               |

---

## Hardening Phases

| Phase | Title                              | Status          | Documentation |
|-------|------------------------------------|-----------------|---------------|
| 0     | Preparation & Baseline             | Completed       | [docs/01-preparation-and-baseline.md](docs/01-preparation-and-baseline.md) |
| 1     | Immediate Basics                   | Completed       | [docs/02-immediate-basics.md](docs/02-immediate-basics.md) |
| 2     | Network Hardening                  | Completed       | [docs/03-network-hardening.md](docs/03-network-hardening.md) |
| 3     | Access Control                     | Completed       | [docs/04-access-control.md](docs/04-access-control.md) |
| 4     | System & Kernel Hardening          | Completed       | [docs/05-system-and-kernel-hardening.md](docs/05-system-and-kernel-hardening.md) |
| 5     | Monitoring & Maintenance           | Completed       | [docs/06-monitoring-and-maintenance.md](docs/06-monitoring-and-maintenance.md) |

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

This project is complete as a baseline hardening lab. Future improvements (removing the old `kali` user, adding screenshots, further tool-specific hardening) can be added over time.

Feel free to open issues or suggestions.

---

**Created by [Aledtz](https://github.com/Aledtz)**  
*Building practical cybersecurity skills one lab at a time.*
