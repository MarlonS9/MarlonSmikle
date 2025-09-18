<#
.SYNOPSIS
    Run this command in an elevated PowerShell or Command Prompt to enable auditing for failed process creation events as required by the STIG.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-18
    Last Modified   : 2025-09-18
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000585

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-AU-000500).ps1 
#>



#WN10-AU-000585
auditpol /set /subcategory:"Process Creation" /failure:enable


# To confirm if “Audit Process Creation – Failure” is enabled, use this command in an elevated Command Prompt or PowerShell:

# auditpol /get /subcategory:"Process Creation"

# If the output shows “Failure” or “Success and Failure”, the audit policy is correctly applied.

