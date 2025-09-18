<#
.SYNOPSIS
    This command configures Windows 10 to audit all successful file share access events, ensuring compliance with STIG WN10-AU-000082.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-18
    Last Modified   : 2025-09-18
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000082

.TESTED ON
    Date(s) Tested  :
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-AU-000082).ps1 
#>


auditpol /set /subcategory:"File Share" /success:enable
