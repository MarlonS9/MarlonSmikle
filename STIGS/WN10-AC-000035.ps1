<#
.SYNOPSIS
    This sets the minimum password length for local accounts to 14 characters, ensuring compliance with the STIG control.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-23
    Last Modified   : 2025-09-23
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000035  

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-AC-000035).ps1 
#>


# To set the mimimum password length for local accounts on a Windows 10 system, use:

net accounts /minpwlen:14



<# To check if net accounts /minimum PW length is 14 successfully run the following command in an elevated Command Prompt or PowerShell session: 

net accounts

If you see 14 listed, the STIG control for maximum password age was successfully implemented.


#>
