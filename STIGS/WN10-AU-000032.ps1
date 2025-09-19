<#
.SYNOPSIS
    This sets the minimum BitLocker startup PIN length to 6, ensuring compliance with the STIG requirements. Run the script as Administrator.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-19
    Last Modified   : 2025-09-19
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000032

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-AU-000032).ps1 
#>


# STIG WN10-AU-000032

New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\FVE" -Force | Out-Null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\FVE" -Name "MinimumPIN" -Type DWord -Value 6


<# 
To check if the BitLocker minimum PIN length was set correctly, run this command in an elevated Command Prompt or PowerShell:

reg query "HKLM\SOFTWARE\Policies\Microsoft\FVE" /v MinimumPIN

If the output shows MinimumPIN REG_DWORD 0x6 (or higher), the STIG has been implemented properly.

#>
