<#
.SYNOPSIS
    Running this command in an elevated PowerShell or Command Prompt sets Windows to audit all failed credential validation events, ensuring STIG compliance.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-18
    Last Modified   : 2025-09-18
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000005

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-AU-000005).ps1 
#>



#WN10-AU-000005

auditpol /set /subcategory:"Credential Validation" /failure:enable


# To check if “Audit Credential Validation – Failure” is enabled: 

# Run this command in an elevated Command Prompt or PowerShell:

# auditpol /get /subcategory:"Credential Validation"

# If the output shows “Failure” (or “Success and Failure”), the audit policy is enabled as required by the STIG.
