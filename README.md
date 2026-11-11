
# IAM: The Role Redesign

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
I looked for unusual permissions, inconsistencies between colleagues and access that may need removing or further justification.

### 3. Which permissions create SoD conflicts?
I examined whether users could perform conflicting actions, especially approving and issuing refunds

### 4. How can we introduce new roles without disrupting work?
I considered how to move users into defined roles without removing necessary access or disrupting billing operations.

<BR>

Reducing permissions is only part of the picture. The main thing is that access matches responsibilities without creating unnecessary exposure.


