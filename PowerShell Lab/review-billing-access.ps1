
# Billing Access Review Automation
# Northwind Health | IAM Case Study

# Import the billing permissions data
$users = Import-Csv "$PSScriptRoot\billing-permissions.csv"

# Confirm the number of employee records
Write-Host "Employees imported: $($users.Count)"

# Define the eight permission columns
$permissions = @(
    "ViewInvoices"
    "CreateInvoice"
    "EditInvoice"
    "DeleteInvoice"
    "ApproveRefunds"
    "IssueRefunds"
    "ExportPatientBillingData"
    "AdminSettings"
)

# Count assigned permissions
$totalGrants = 0

foreach ($user in $users) {
    foreach ($permission in $permissions) {
        if ($user.$permission -eq "1") {
            $totalGrants++
        }
    }
}

Write-Host "Total permission grants: $totalGrants"

# Identify users who can both approve and issue refunds
$refundOverlap = $users | Where-Object {
    $_.ApproveRefunds -eq "1" -and
    $_.IssueRefunds -eq "1"
}

Write-Host "`nRefund permission overlap:"
$refundOverlap | Format-Table Name, JobTitle

# Identify users with invoice deletion access
$deletionAccess = $users | Where-Object {
    $_.DeleteInvoice -eq "1"
}

Write-Host "`nInvoice deletion access:"
$deletionAccess | Format-Table Name, JobTitle


# Generate the access review report
$report = foreach ($user in $users) {
    [PSCustomObject]@{
        Name = $user.Name
        JobTitle = $user.JobTitle
        RefundPermissionOverlap = (
            $user.ApproveRefunds -eq "1" -and
            $user.IssueRefunds -eq "1"
        )
        InvoiceDeletionAccess = ($user.DeleteInvoice -eq "1")
    }
}

# Export the report to CSV
$report | Export-Csv "$PSScriptRoot\access-review-report.csv" -NoTypeInformation

Write-Host "`nAccess review report exported successfully."
