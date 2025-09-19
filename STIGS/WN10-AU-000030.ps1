<#
.SYNOPSIS
    Running this in an elevated PowerShell or Command Prompt will enable auditing of successful security group management actions, ensuring compliance with the STIG.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-18
    Last Modified   : 2025-09-18
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000030

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-AU-000030).ps1 
#>



# STIG WN10-AU-000030
auditpol /set /subcategory:"Security Group Management" /success:enable

# To verify if “Audit Security Group Management – Success” is enabled, run this command in an elevated Command Prompt or PowerShell:

# auditpol /get /subcategory:"Security Group Management"

# If the output shows “Success” (or “Success and Failure”), the audit policy is active as required by the STIG.
