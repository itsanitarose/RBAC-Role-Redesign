
# IAM: The Role Redesign

## 🎫 The Ticket

It's 9 November 2026, my sixth week on the security team at Northwind Health. The organisation is growing, and another access problem has reached my desk.

My manager writes:

> Access to the billing system has grown organically. Everyone's access was copied from 'someone similar', and nobody can say what anyone actually needs. Using this matrix, propose a role structure we could roll out, tell me who worries you, and how we get there safely.

<br>

**Supporting information:** [Billing permissions matrix](Document/01.%20Source%20Data.md)

<BR>



## What's the Risk?

The IT Manager mentioned that permissions have been copied from employees with similar jobs, without checking what each person actually needs.

Before reviewing individual accounts, I want to understand the risks this approach could introduce:

- **Privilege Creep:** Employees may accumulate permissions they no longer need, particularly as their responsibilities change.
- **Least Privilege Violation:** Users may have access to functions beyond what their jobs require.
- **Segregation of Duties (SoD) Conflict:** One person could hold permissions to approve and carry out sensitive financial transactions without sufficient independent oversight, increasing the risk of fraud.
- **Data Exposure and Integrity Risk:** Excessive permissions could allow sensitive information to be viewed, exported, modified or deleted without proper authorisation.
- **Weak Access Oversight:** Without clearly defined roles, it becomes difficult to know who needs which permissions, identify unnecessary access and apply consistent controls.

With these risks in mind, I reviewed the permission matrix to identify any signs of them.

<BR>

## The Investigation

I approached the permission review with four questions, focusing on **role consistency, business justification and potentially conflicting access.**


### 1. What access does each job actually require?
I compared employees with similar responsibilities to identify which permissions might belong in a standard role and which need further justification.

### 2. Which permissions are necessary for each role, and which may be excessive?
I looked for unusual permissions, differences between people doing the same job and accounts that might need closer review.

### 3. Which permission combinations could create conflicts?
I examined whether individuals could perform sensitive financial activities that should be subject to independent checks.

### 4. How can we introduce new roles without disrupting work?
I considered how to move from individual permissions to a consistent role structure while protecting legitimate access and avoiding unnecessary disruption.

<BR>

Reducing permissions is only part of the picture. The main thing is that access matches responsibilities without creating unnecessary exposure.


