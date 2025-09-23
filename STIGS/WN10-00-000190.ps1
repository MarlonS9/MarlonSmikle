<#
.SYNOPSIS
    Use PowerShell to scan local User Rights assignments, identify unresolved SIDs, and remove them automatically from policy settings.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-22
    Last Modified   : 2025-09-22
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000190 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-00-000190).ps1 
#>



# Run as administrator

# Get all User Rights Assignment properties from local security policy
$lsaKey = 'HKLM:\System\CurrentControlSet\Control\Lsa'
$privKey = 'HKLM:\System\CurrentControlSet\Control\Lsa'
$rightsKey = 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa'

# User Rights assignments are stored in the registry under:
$rightsAssignments = Get-ChildItem 'HKLM:\SYSTEM\CurrentControlSet\Control\Lsa\' | Where-Object { $_.GetValueNames().Count -gt 0 }

foreach ($right in $rightsAssignments) {
    foreach ($valueName in $right.GetValueNames()) {
        $values = $right.GetValue($valueName)
        if ($values) {
            # Values may be single or array
            $values = @($values)
            $validValues = @()
            foreach ($sid in $values) {
                try {
                    # Try to resolve SID
                    $account = (New-Object System.Security.Principal.SecurityIdentifier($sid)).Translate([System.Security.Principal.NTAccount])
                    $validValues += $sid
                } catch {
                    Write-Host "Removing unresolved SID $sid from $valueName"
                    # Unresolved SID, don't add to validValues array
                }
            }
            if ($validValues.Count -ne $values.Count) {
                # If any changes were made, write back only valid values
                Set-ItemProperty -Path $right.PSPath -Name $valueName -Value $validValues
            }
        }
    }
}


<# To check 

Export user rights assignments, then scan the file for SIDs (“S-1-…”) that do not resolve to user or group names using PowerShell.

Step-by-step Process

1.Export User Rights Assignments
  secedit /export /areas USER_RIGHTS /cfg $env:TEMP\UserRights.txt

2.Review for Unresolved SIDs
  Get-Content "$env:TEMP\UserRights.txt" | Select-String "S-1-"

3.Interpretation

Any SID that starts with S-1- and cannot be mapped to a known or valid account (domain, built-in, local) is considered orphaned or unresolved.

You can cross-reference typical/valid SIDs (e.g., S-1-5-32-544 for Administrators) to help identify unexpected entries.



#>
