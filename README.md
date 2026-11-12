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


### 1. What access does each job actually require?
I compared employees with similar responsibilities to identify permissions that might belong in a standard role, subject to business approval.


### 2. Which permissions are necessary for each role, and which may be excessive?
I looked for unusual permissions, inconsistencies between colleagues and access that may need removing or further justification

### 3. Which permissions create SoD conflicts?
I examined whether users could perform conflicting actions, especially approving and issuing refunds

### 4. How can we introduce new roles without disrupting work?
I considered how to move users into defined roles without removing necessary access or disrupting billing operations.

Reducing permissions is only part of the picture. The main thing is that access matches responsibilities without creating unnecessary exposure.


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

What stood out to me wasn't simply how much access some employees had. It was how little the existing permission assignments told me about why they had it.

Removing access might seem like the obvious fix, but removing something an employee genuinely needs creates another problem.

The next step is to confirm responsibilities, resolve the conflicting permissions and test whether the application can enforce the proposed controls.

**Access should follow responsibility, not whoever happened to have the permissions first.**

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

---

[← Week 5: SAML SSO Troubleshooting](https://github.com/itsanitarose/SAML-SSO-Troubleshooting) · [All Case Studies](https://github.com/itsanitarose/IAM-Case-Studies)

