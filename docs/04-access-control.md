# Phase 3: Access Control

**Status:** Completed

## Objectives

- Control remote access paths
- Eliminate weak authentication methods
- Secure or remove the SSH service
- Address tool-specific default credentials

## Why This Matters

SSH is the most common remote entry point. Default or weak authentication on SSH (or on tools that expose web interfaces/databases) is a frequent cause of compromise.

## Steps Completed

### 1. SSH Server
**Status: Completed (earlier)**
- Decision: Not required for this lab
- Action: `openssh-server` stopped, disabled, and purged

### 2. Metasploit Database
**Status: Completed**
- PostgreSQL is running and listening on localhost only
- Metasploit configuration file present
- Successfully connected: `[*] Connected to msf. Connection type: postgresql.`

### 3. Other Tools
- Empire and OpenVAS/GVM are present but left with defaults for now
- Will be secured later only if/when actually used

### 4. User Accounts
- Primary user: `hankhacks` (sudo)
- Old `kali` user still present (removal planned for a later cleanup step)

## Snapshot

- **Name:** `04-access-control-complete`
- **Description:** SSH removed, Metasploit database initialized and verified, optional tools deferred

## Verification

- [x] SSH server removed
- [x] Metasploit database connected successfully
- [x] Scope decision documented (optional tools deferred)
- [x] Snapshot taken

---

*Previous: [Network Hardening](03-network-hardening.md)*  
*Next: [System & Kernel Hardening](05-system-and-kernel-hardening.md)*
