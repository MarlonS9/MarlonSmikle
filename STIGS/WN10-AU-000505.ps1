<#
.SYNOPSIS
    This script sets the maximum Security event log size to 1,024,000 KB (or greater), as required by the STIG. Run in an elevated PowerShell session for immediate compliance.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-18
    Last Modified   : 2025-09-18
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000505

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-AU-000505).ps1 
#>




#STIG WN10-AU-000505
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security" -Force | Out-Null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security" -Name "MaxSize" -Type DWord -Value 1024000



#To check if STIG WN10-AU-000505 was implemented, verify the Security log maximum size in the registry or with wevtutil.

#Open Command Prompt as Administrator and run:

#reg query "HKLM\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security" /v MaxSize

#If the output shows MaxSize REG_DWORD 0x000fa000 (or a higher value), the STIG is implemented.


