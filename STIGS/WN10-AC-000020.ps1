<#
.SYNOPSIS
    Purpose: Prevents users from reusing the same passwords by enforcing a history of 24 remembered passwords for each account.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-23
    Last Modified   : 2025-09-23
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000020  

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID- WN10-AC-000020).ps1 
#>



# For local accounts on a standalone Windows 10 machine:
net accounts /uniquepw:24

# For domain-joined machines, use Group Policy cmdlets to update:
Set-ADDefaultDomainPasswordPolicy -Identity "YourDomain" -PasswordHistoryCount 24


