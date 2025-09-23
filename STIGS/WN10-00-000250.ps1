<#
.SYNOPSIS
    The following command disables all Bluetooth radios on a Windows system:

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-22
    Last Modified   : 2025-09-22
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000250 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-00-000250).ps1 
#>


$policyPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services"
New-Item -Path $policyPath -Force | Out-Null
Set-ItemProperty -Path $policyPath -Name "MaxIdleTime" -Value 86400000 -Type DWord




