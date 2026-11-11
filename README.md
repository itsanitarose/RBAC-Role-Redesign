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

<BR><BR>

## Case Study Outcome

**Designed for growth:** I proposed a role structure based on business responsibilities rather than copying permissions between employees. The aim is to make access consistent as Northwind Health grows, without creating unnecessary roles or weakening security controls.

[Explore the proposed role catalogue](Document/02.%20Role%20Catalogue.md)
<BR><BR>

## Reflection & Next Steps

<BR><BR>

## Explore the Investigation
| Document | What's Inside |
|---|---|
| [01. Source Data](Document/01.%20Source%20Data.md) | Original permissions matrix |
| [02. Role Catalogue](Document/02.%20Role%20Catalogue.md) | Proposed roles and permissions |
| [03. Access Outliers](Document/03.%20Access%20Outliers.md) | Exceptions and recommended actions |
| [04. Segregation of Duties](Document/04.%20Segregation%20of%20Duties.md) | Conflicting permissions and affected users |
| [05. Rollout & Verification](Document/05.%20Rollout%20%26%20Verification.md) | Safe migration plan and validation checks |
| [06. Digging Deeper](Document/06.%20Digging%20Deeper.md) | Permission grant reduction calculation |




