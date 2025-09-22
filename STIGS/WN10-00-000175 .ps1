<#
.SYNOPSIS
    TIG WN10-00-000175 requires that the Secondary Logon service be disabled on Windows 10 systems, as this service allows users to enter alternate credentials and run processes with elevated privileges,
    increasing the risk of credential theft if left enabled

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-22
    Last Modified   : 2025-09-22
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000175 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-00-000175).ps1 
#>


Set-Service -Name seclogon -StartupType Disabled
Stop-Service -Name seclogon -Force




<# To check the status using PowerShell:


Get-Service -Name seclogon | Select-Object Status, StartType

This returns both the current running status and startup type for the service.

These steps fulfill the STIG's technical requirements for compliance using PowerShell.


#>
