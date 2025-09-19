<#
.SYNOPSIS
    Run this command in an elevated PowerShell or Command Prompt to enable auditing for successful user account management events and meet the STIG requirement.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-19
    Last Modified   : 2025-09-19
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000035

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-AU-000035).ps1 
#>


# STIG WN10-AU-000035

auditpol /set /subcategory:"User Account Management" /success:enable


# To verify if “Audit User Account Management – Success” is enabled, run this in an elevated Command Prompt or PowerShell:

# auditpol /get /subcategory:"User Account Management"

# If the output includes “Success”, the audit policy is correctly applied as required by STIG WN10-AU-000035.

