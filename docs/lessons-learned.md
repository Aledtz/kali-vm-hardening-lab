# Lessons Learned

This document records real observations, problems encountered, decisions made, and insights gained during the project.

---

**Date:** September 2026  
**Phase:** 4 – System & Kernel Hardening  
**Observation / Issue:**  
Installing and running `rkhunter` produced many warnings and the online signature update failed. Reviewing the scan results was initially surprising.  

**Decision / Resolution:**  
Accepted the failed update as a known limitation of the aging tool. Used the local property database (`--propupd`) and treated the warnings as expected noise on a Kali system.  

**Takeaway:**  
Installing and using offensive cybersecurity tools can itself introduce risks and vulnerabilities. Even security-focused utilities may be outdated, produce false positives, or fail to update cleanly. This reinforced the importance of understanding the tools you install, maintaining baselines, and not treating any single scanner as authoritative.

---

**Date:** September 2026  
**Phase:** 4 – System & Kernel Hardening  
**Observation / Issue:**  
The OpenSSL “Strong Security / Wide Compatibility” option documented in older Kali guides was no longer present in `kali-tweaks` on the current rolling release.  

**Decision / Resolution:**  
Left OpenSSL at the default wider-compatibility setting, which is more suitable for CTF work that may involve older or misconfigured services.  

**Takeaway:**  
Documentation can lag behind rolling-release changes. Always verify current tool behavior instead of relying solely on older guides.

---

**Date:** September 2026  
**Phase:** Multiple  
**Observation / Issue:**  
Taking named snapshots before and after each major phase made experimentation low-risk and reversible.  

**Decision / Resolution:**  
Maintained a clear snapshot naming scheme tied to project phases.  

**Takeaway:**  
Snapshot discipline is one of the highest-value habits when hardening or experimenting on a lab VM.
