## The Role Redesign

## 🎫 The Ticket

It's 9 November 2026, my sixth week on the security team at Northwind Health. The organisation is growing, and another access problem has reached my desk.

My manager writes:

> Access to the billing system has grown organically. Everyone's access was copied from 'someone similar', and nobody can say what anyone actually needs. Using this matrix, propose a role structure we could roll out, tell me who worries you, and how we get there safely.

<br>


**Supporting Information:** [Billing permissions matrix](Document/01.%20Billing%20permissions%20matrix.md)



<BR>


<table>
<tr>
<td>

**🛡️ Decision**

Replace copied permissions with six role based access groups.  

43 direct grants exist across 12 users. Farid and Hana hold both refund approval and issuance, the highest priority conflict.  

Separate conflicting duties, remove unnecessary access, and assign permissions through roles. Treat Delete Invoice as break-glass.  

Test in parallel for two weeks before removing existing grants.

</td>
</tr>
</table>



<BR>


## What's the Risk?

Permissions have been copied between employees without checking what each person actually needs.

This raises five potential IAM risks:

- **Privilege Creep:** Accumulation of unnecessary permissions.
- **Least Privilege Violations:** Access beyond job requirements.
- **Segregation of Duties (SoD) Conflicts:** Conflicting permissions without independent oversight.
- **Data Exposure and Integrity Risks:** Unauthorised access, changes or deletion of sensitive data.
- **Weak Access Oversight:** Poor visibility and control over assigned permissions.

<BR>

## The Investigation

I approached the permission review with four questions:

1. What access does each job actually require?
2. Which permissions are necessary for each role, and which may be excessive?
3. Which permissions create SoD conflicts?
4. How can we introduce new roles without disrupting work?

<BR>

## What I Found

- **Conflicting Access:** Farid and Hana can both approve and issue refunds.
- **Inconsistent Permissions:** Employees doing similar jobs do not always have the same access.
- **Sensitive Access:** Invoice deletion, patient billing data exports and administrative permissions need tighter control.

<BR>

## Case Study Outcome

The review resulted in a proposed [six role RBAC design](Document/02.%20Role%20Catalogue.md).

**Main recommendations:**
- Resolve conflicting access on Farid and Hana first.
- Treat Delete Invoice as a break-glass permission.
- Follow the [phased rollout plan](Document/05.%20Rollout%20Plan.md), including a two-week parallel run.

**Status:** Ready for review by Finance, Billing and IT.

**Permission Grant Reduction:** 43 grants move into roles. After cleaning outliers, 14 permissions disappear. See [Permission Grant Reduction](Document/06.%20Permission%20Grant%20Reduction.md).

<BR>

## Reflection & Next Steps

What challenged me most was realising that a cleaner permission matrix does not automatically mean better security.

Designed permissions and effective access are not the same thing. Separate refund roles do not stop someone being given both, and a Billing Viewer role does not tell you which records people can see.

Going forward, I will question not only which permissions someone holds, but how those permissions work together and what users can actually do.

A well designed role structure is a good starting point. The real test is whether the system actually enforces the access boundaries we intended.

<BR>

## Explore the Investigation

| Document | What's Inside |
|----------|---------------|
| [01. Billing permissions matrix](Document/01.%20Billing%20permissions%20matrix.md) | Original permissions matrix |
| [02. Role Catalogue](Document/02.%20Role%20Catalogue.md) | Proposed roles and permissions |
| [03. Access Outliers](Document/03.%20Access%20Outliers.md) | Exceptions and recommended actions |
| [04. Segregation of Duties](Document/04.%20Segregation%20of%20Duties.md) | Conflicting permissions and affected users |
| [05. Rollout Plan](Document/05.%20Rollout%20Plan.md) | Safe migration plan |
| [06. Permission Grant Reduction](Document/06.%20Permission%20Grant%20Reduction.md) | Permission grant reduction calculation |



<BR>

---

[← Week 5: SAML SSO Troubleshooting](https://github.com/itsanitarose/SAML-SSO-Troubleshooting) · [All Case Studies](https://github.com/itsanitarose/IAM-Case-Studies)

