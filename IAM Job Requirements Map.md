# IAM Skills Map

**Northwind Health | RBAC Role Redesign**

This map links requirements from five IAM Analyst job postings to the work completed in this case study.

| Job Requirement | Evidence in This Project |
|---|---|
| **Access Reviews and Audits** | [01. Source Data](Document/01.%20Source%20Data.md) · [03. Access Outliers](Document/03.%20Access%20Outliers.md): Reviewed 12 employee permission records and documented access requiring further investigation. |
| **Role-Based Access Control (RBAC)** | [02. Role Catalogue](Document/02.%20Role%20Catalogue.md): Proposed six job-based roles with defined permissions, replacing the practice of copying access between employees. |
| **Least Privilege** | [03. Access Outliers](Document/03.%20Access%20Outliers.md): Assessed permissions against job responsibilities and identified access requiring justification or removal. |
| **Investigate Access Discrepancies** | [03. Access Outliers](Document/03.%20Access%20Outliers.md): Compared employees with similar responsibilities to identify inconsistent permissions and unusual access assignments. |
| **Remediate Access Issues** | [03. Access Outliers](Document/03.%20Access%20Outliers.md) · [05. Rollout Plan](Document/05.%20Rollout%20Plan.md): Recommended actions for identified exceptions and proposed a phased migration. No access changes were implemented. |
| **Identity Governance and Access Control** | [04. Segregation of Duties](Document/04.%20Segregation%20of%20Duties.md): Identified conflicting refund permissions and recommended independent approval and access oversight. |
| **Scripting and Automation** | [PowerShell Access Review](PowerShell%20Lab/README.md): Built a PowerShell script to analyse permission assignments, flag access requiring review and export findings to CSV. |
| **Testing and Verification** | [PowerShell Access Review](PowerShell%20Lab/README.md): Tested the script against baseline and modified datasets, verifying that a new refund permission overlap was detected. |
| **Prepare Audit Evidence** | [01. Source Data](Document/01.%20Source%20Data.md) · [PowerShell Access Review](PowerShell%20Lab/README.md): Preserved the source permissions matrix, generated CSV reports and documented execution results with screenshots. |
| **Stakeholder Collaboration** | [05. Rollout Plan](Document/05.%20Rollout%20Plan.md): Identified the business validation and approvals required from Finance, Billing and IT before implementing role changes. |

<BR>

## 🔎 Areas of Interest

- **Non-Human Identity Management:** Service accounts, ownership and credential management.
- **AI Agent Security:** Agent identities, permissions and access controls.

---

[Back to Project Overview](README.md)
