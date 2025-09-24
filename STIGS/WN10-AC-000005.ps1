<#
.SYNOPSIS
   This parameter specifies the amount of time that an account will remain locked after the specified number of failed logon attempts.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-23
    Last Modified   : 2025-09-23
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000005  

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-AC-000005).ps1 
#>



net accounts /lockoutduration:15


# Check the output for "Lockout duration (minutes)" which should display 15 or higher.

# net accounts
