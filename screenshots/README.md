# Screenshots

Visual documentation captured during the Kali VM hardening process.

## Phase 1 – Immediate Basics
| File | Description |
|------|-------------|
| `01-change-passwd-and-user.png` | Changing password / user setup |
| `02-add-new-user-sudo.png` | Creating `hankhacks` and adding to sudo |
| `03-change-hostname.png` | Setting hostname to `hankslab` |
| `04-change-host-2.png` | Hostname / hosts file configuration |
| `05-stop-ssh.png` | Stopping the SSH service |
| `06-remove-ssh.png` | Removing the SSH server package |
| `07-hankhacks-login.png` | Successful login as `hankhacks` |

## Phase 2 – Network Hardening
| File | Description |
|------|-------------|
| `08-mac-address-randomization.png` | MAC randomization configuration |
| `09-enable-ufw.png` | UFW firewall enabled |

## Phase 3 – Access Control
| File | Description |
|------|-------------|
| `10-msfdb-status.png` | Metasploit database status |
| `11-msfdb-init.png` | Metasploit database initialization |
| `12-msf-connect.png` | Successful Metasploit DB connection |

## Phase 4 – System & Kernel Hardening
| File | Description |
|------|-------------|
| `13-auto-updates.png` | Unattended upgrades setup |
| `14-auto-updates-confirmation.png` | Unattended upgrades confirmation |
| `15-sysctl-hardening.png` | Sysctl hardening applied |

These screenshots are also embedded in the corresponding phase documentation under `docs/`.
