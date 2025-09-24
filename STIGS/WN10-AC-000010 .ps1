<#
.SYNOPSIS
  The account lockout feature, when enabled, prevents brute-force password attacks on the system.
  
.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-23
    Last Modified   : 2025-09-23
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000010  

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-AC-000010).ps1 
#>



net accounts /lockoutthreshold:3


<# After running the command, execute:
 
 net accounts

Check for "Lockout threshold", which should display 3 or less for compliance.

#>
