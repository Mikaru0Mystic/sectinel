# Security Policy

## Reporting a vulnerability

**Do not open a public issue for a security vulnerability.**

Report privately via GitHub Security Advisories:
**https://github.com/PockySweet/sectinel/security/advisories/new**

We acknowledge within **48 hours** and will coordinate disclosure with you.
Reporters are credited if they wish.

## Scope

In scope:
- Sectinel's own installers, scripts, integration code, and packaging.
- A skill or script in this repo that, if run as written, would **harm the user**
  (e.g. exfiltrates data, runs a destructive command without consent, or
  contains a malicious payload).
- Supply-chain integrity of this repository.

Report upstream (not here):
- Bugs in a **vendored** library's skill content → report to the original
  project (see [ATTRIBUTIONS.md](ATTRIBUTIONS.md)); we'll re-sync the fix.
- Bugs in an **integrated** tool (ship-safe, Shannon, PentAGI, semgrep, …) →
  report to that tool's project.

## Acceptable use

Sectinel includes **offensive** security skills and wires **active-exploitation**
tools (Shannon, PentAGI). These are powerful. Use them **only** against systems
you own or are explicitly authorized in writing to test. Unauthorized scanning
or exploitation is illegal in most jurisdictions (e.g. the U.S. Computer Fraud
and Abuse Act and equivalents).

Offensive skills in the arsenal open with an authorization check and refuse
ambiguous or unauthorized use. You are solely responsible for ensuring you have
authorization. The authors accept no liability for misuse. This project is for
**authorized, defensive, research, and educational** use only.
