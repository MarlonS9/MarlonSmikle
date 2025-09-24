<#
.SYNOPSIS
    This policy requires that user passwords expire after no more than 60 days, reducing the risk of long-term password compromise.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-23
    Last Modified   : 2025-09-23
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000025  

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID- WN10-AC-000025).ps1 
#>


# To set the maximum password age for local accounts on a Windows 10 system, use:

net accounts /maxpwage:60

<# To check if net accounts /maxpwage:60 successfully set the maximum password age, run the following command in an elevated Command Prompt or PowerShell session: 

net accounts

If you see 60 listed, the STIG control for maximum password age was successfully implemented.


#>
