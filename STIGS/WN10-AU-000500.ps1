<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-16
    Last Modified   : 2025-09-16
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000500

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


New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application" -Force | Out-Null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application" -Name "MaxSize" -Value 32768 -Type DWord
