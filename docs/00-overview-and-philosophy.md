# Overview & Philosophy

## Why Harden Kali Linux?

Kali Linux is designed as an offensive security platform. Its default configuration prioritizes:

- Maximum tool availability
- Convenience for penetration testers
- Out-of-the-box usability

This comes at the cost of security posture. Common issues on a fresh install (especially pre-built VM images) include:

- Well-known default credentials (`kali`/`kali`)
- Predictable hostname (`kali`)
- Identical SSH host keys across images
- Unnecessary services potentially listening
- No firewall by default
- Tool-specific default credentials (Metasploit, BeEF, etc.)
- Network fingerprint that clearly identifies the system as Kali

Leaving these defaults in place is one of the most common mistakes made by people new to offensive security. A poorly secured attacker machine can become a liability.

## Core Principles of This Lab

1. **Defense in Depth**  
   Multiple independent layers of protection. No single control is trusted completely.

2. **Least Privilege**  
   Run as a normal user with sudo. Avoid daily root usage.

3. **Reduce Attack Surface**  
   Disable or remove what is not needed. Open only required ports.

4. **Make the System Less Noisy / Identifiable**  
   Change hostname, randomize MAC, regenerate cryptographic material.

5. **Document Everything**  
   Every change is recorded with rationale so the process is reproducible and reviewable.

6. **Snapshot-Driven Safety**  
   Take a VM snapshot before every major phase. Treat snapshots like version control commits.

7. **Progressive Hardening**  
   Phases are ordered by risk reduction and ease of rollback. You can stop at any point and still have a meaningfully improved system.

## What This Project Is (and Is Not)

**This project is:**
- A practical home-lab exercise
- A portfolio piece demonstrating Linux security skills
- A living document of decisions and trade-offs
- Focused on a **virtual machine** used in an isolated or controlled lab network

**This project is not:**
- A production server hardening guide
- A claim that a hardened Kali is “secure”
- Suitable for internet-facing deployment without significant additional controls
- A replacement for understanding the tools and risks involved

## Residual Risk Statement

Even after full hardening, Kali Linux will retain residual risk due to:

- Large number of powerful tools and libraries
- Frequent updates (rolling release)
- Potential for user error when running offensive tools
- Complexity introduced by the tooling itself

The goal is **risk reduction**, not risk elimination.

## How to Use This Documentation

1. Read this overview.
2. Complete Phase 0 (Preparation & Baseline) and take a clean snapshot.
3. Work through each subsequent phase in order.
4. Update the status table in the main README as phases are completed.
5. Capture relevant screenshots and place them in the `screenshots/` directory.
6. Record any deviations, problems, or lessons in `docs/lessons-learned.md`.

---

*Next: [01 - Preparation & Baseline](01-preparation-and-baseline.md)*
