<#
.SYNOPSIS
    PowerShell, can enumerate and remove prohibited accounts from the local Administrators group, ensuring only approved administrator accounts remain. 

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-19
    Last Modified   : 2025-09-19
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000070

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-00-000070).ps1 
#>


# STIG WN10-00-000070

# List all members of the local Administrators group
Get-LocalGroupMember -Group "Administrators"

# Remove a standard user (replace 'username' with the actual account name)
Remove-LocalGroupMember -Group "Administrators" -Member "username"


<#
To check the current members of the local Administrators group, run the following PowerShell command:

Get-LocalGroupMember -Group "Administrators"

This will list all accounts in the Administrators group, allowing you to verify that only approved administrator accounts are present and that no standard user accounts remain.
#>
