## The Role Redesign

## 🎫 The Ticket

It's 9 November 2026, my sixth week on the security team at Northwind Health. The organisation is growing, and another access problem has reached my desk.

My manager writes:

> Access to the billing system has grown organically. Everyone's access was copied from 'someone similar', and nobody can say what anyone actually needs. Using this matrix, propose a role structure we could roll out, tell me who worries you, and how we get there safely.

<br>

**Supporting information:** [Billing permissions matrix](Document/01.%20Source%20Data.md)

<BR>


## What's the Risk?

The IT Manager mentioned that permissions have been copied between employees without checking what each person actually needs.

This raises five potential IAM risks:

- **Privilege Creep:** Accumulation of unnecessary permissions.
- **Least Privilege Violations:** Access beyond job requirements.
- **Segregation of Duties (SoD) Conflicts:** Conflicting permissions without independent oversight.
- **Data Exposure and Integrity Risks:** Unauthorised access, changes or deletion of sensitive data.
- **Weak Access Oversight:** Poor visibility and control over assigned permissions.

With these risks in mind, I reviewed the permission matrix to identify any signs of them.

<BR>


## The Investigation

I approached the permission review with four questions, focusing on **role consistency, business justification and potentially conflicting access.**

<BR>

### 1. What access does each job actually require?
I compared employees with similar responsibilities to identify permissions that might belong in a standard role, subject to business approval.


### 2. Which permissions are necessary for each role, and which may be excessive?
I looked for unusual permissions, inconsistencies between colleagues and access that may need removing or further justification

### 3. Which permissions create SoD conflicts?
I examined whether users could perform conflicting actions, especially approving and issuing refunds

### 4. How can we introduce new roles without disrupting work?
I considered how to move users into defined roles without removing necessary access or disrupting billing operations.

<BR>

While reducing permissions is only part of the picture, the main thing is that access matches responsibilities without creating unnecessary exposure.


<BR>

## What I Found


In reviewing the [billing permissions matrix](Document/01.%20Source%20Data.md), I identified three concerns:

- **Conflicting Access:** Farid and Hana can both approve and issue refunds, raising questions about independent oversight.
- **Inconsistent Permissions:** Employees doing similar jobs don't always have the same access. Some differences may be justified, but they need explaining.
- **Sensitive Access:** Invoice deletion, patient billing data exports and administrative permissions need closer examination.

<BR>

The matrix tells me who has access, but not who actually needs it. Removing every unusual permission would be premature, and leaving everything as it is would carry the same risks forward.

I used these findings to shape a role structure based on responsibilities, with conflicting permissions separated and exceptions requiring justification.


<BR>


## Case Study Outcome

The review resulted in a proposed [six-role RBAC design](Document/02.%20Role%20Catalogue.md), with permissions grouped by business responsibilities rather than copied between employees.

The main recommendations are:

- **Resolve Conflicting Access:** Prioritise Farid and Hana's refund permissions and verify that independent approval is enforced.
- **Review Access Exceptions:** Validate unusual permissions against actual responsibilities, particularly invoice deletion, data exports and administrative access.
- **Introduce RBAC Safely:** Follow the [phased rollout plan](Document/05.%20Rollout%20Plan.md), testing essential billing functions before removing existing grants.

**Digging Deeper:** Beyond redesigning the roles, I examined how many individual permission grants could disappear under RBAC. The [Permission Grant Reduction assessment](Document/06.%20Permission%20Grant%20Reduction.md) identified **43 direct grants that could potentially be retired**, subject to validation.

**Status:** The proposed design is ready for review by Finance, Billing and IT. No changes have been implemented, and outstanding access decisions must be resolved before migration.

<BR>


## Reflection & Next Steps

What challenged me most in this review was realising that a cleaner permission matrix does not automatically mean better security.

When I excluded invoice deletion from the proposed roles in my first draft, I realised I might have removed something the business still needs. Fewer permissions might look neat on paper, but what really matters is whether people still have the right access to do their jobs.

I also had to distinguish between permissions that simply look unusual and those that create genuine conflicts. The matrix showed me who had access, but it couldn't tell me why they had it, how they used it or what safeguards were already in place.

Another question came up as I designed the six roles: **how could I be sure the proposed access controls would work as intended?**

I separated refund approval from issuance into different roles and recommended controls to keep those duties independent. But the role catalogue alone doesn't prevent someone from being assigned both roles. Even with separate assignments, I still need to know whether the application enforces independent approval.

The same applies to the Billing Viewer role. Giving support staff and auditors permission to view invoices doesn't tell me which patient records they can actually see. Read-only access still needs appropriate boundaries.

This made me realise that **designed permissions and effective access are not necessarily the same thing.**

Going forward, I'll take this thinking into future IAM investigations. I'll question not only which permissions someone holds, but how those permissions work together, what resources they expose and what users can actually do.

**A well designed role structure is a good starting point. But the real test is whether the system actually enforces the access boundaries we intended.**


<BR>

## Explore the Investigation

| Document | What's Inside |
|---|---|
| [01. Source Data](Document/01.%20Source%20Data.md) | Original permissions matrix |
| [02. Role Catalogue](Document/02.%20Role%20Catalogue.md) | Proposed roles and permissions |
| [03. Access Outliers](Document/03.%20Access%20Outliers.md) | Exceptions and recommended actions |
| [04. Segregation of Duties](Document/04.%20Segregation%20of%20Duties.md) | Conflicting permissions and affected users |
| [05. Rollout Plan](Document/05.%20Rollout%20Plan.md) | Safe migration plan and validation checks |
| [06. Permission Grant Reduction](Document/06.%20Permission%20Grant%20Reduction.md) | Permission grant reduction calculation |

<BR>

## PowerShell | Billing Access Review

I extended the investigation with a PowerShell script to automate permission analysis against the original billing matrix.

The script identifies overlapping refund permissions, flags invoice deletion access and generates a CSV report.

**Verified:** 12 users, 43 permission grants. A separate test confirmed the script detected an additional refund permission overlap after a simulated access change.

**[Explore the PowerShell Lab →](PowerShell%20Lab/README.md)**



<BR>

---

[← Week 5: SAML SSO Troubleshooting](https://github.com/itsanitarose/SAML-SSO-Troubleshooting) · [All Case Studies](https://github.com/itsanitarose/IAM-Case-Studies)

