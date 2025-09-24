<#
.SYNOPSIS
    This command sets the minimum password age to 1 day, meaning users must wait at least one day before changing their password again.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-23
    Last Modified   : 2025-09-23
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000030  

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-AC-000030).ps1 
#>


# To set the mimimum password age for local accounts on a Windows 10 system, use:

net accounts /minpwage:1


<# To check if net accounts /minpwage:1 successfully set the minimum password age, run the following command in an elevated Command Prompt or PowerShell session: 

net accounts

If you see 1 listed, the STIG control for maximum password age was successfully implemented.


#>
