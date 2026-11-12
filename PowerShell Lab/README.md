# PowerShell Access Review Automation

## Purpose

This lab extends the Northwind Health RBAC Role Redesign case study by using PowerShell to automate permission analysis.

The script reads a billing permissions export, identifies access requiring review and generates a CSV report.

## What the Script Does

- Imports employee permission records.
- Counts individual permission grants.
- Identifies users who can both approve and issue refunds.
- Identifies users with invoice deletion access.
- Exports the findings to CSV.

## How to Run

Requires PowerShell 7 and the supplied CSV file.

From the lab folder:

```powershell
.\review-billing-access.ps1
```

The generated report is saved as `access-review-report.csv`.

## Verification Results

| Check | Baseline | Modified Test |
|---|---|---|
| Employees | 12 | 12 |
| Permission grants | 43 | 44 |
| Refund permission overlap | Farid, Hana | Farid, Hana, Jo |
| Invoice deletion access | Farid, Hana | Farid, Hana |

For the modified test, Jo was granted refund approval in a separate copy of the dataset. The script correctly detected the additional permission grant and refund overlap.

## Scope and Limitations

The script analyses exported permission data. It does not determine whether access is justified, detect actual misuse or modify permissions.

Flagged access requires business validation and IAM review.

All testing used fictional data. No production systems were accessed or changed.

