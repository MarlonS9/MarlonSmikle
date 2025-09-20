<#
.SYNOPSIS
    You can use PowerShell to ensure Windows Update is enabled and set to automatic, which implements the key requirement of STIG WN10-00-000025.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-19
    Last Modified   : 2025-09-19
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000025

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-00-000025).ps1 
#>


# Enable and start the Windows Update (wuauserv) service:

Set-Service -Name wuauserv -StartupType Automatic
Start-Service -Name wuauserv

# Configure automatic updates via registry (forces Automatic):

Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name NoAutoUpdate -Value 0
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name AUOptions -Value 4

# Check that Windows Update service is running and automatic:

Get-Service -Name wuauserv

# The output should show Status: Running and StartType: Automatic.

# Check Windows Update automatic settings:

Get-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU"

# Ensure NoAutoUpdate is 0 and AUOptions is 4 (which means "Auto download and schedule the install").



