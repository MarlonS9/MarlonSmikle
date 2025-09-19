<#
.SYNOPSIS
    These commands enable required registry-based BitLocker startup authentication, ensuring compliance with the STIG.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-19
    Last Modified   : 2025-09-19
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000031

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-AU-000031).ps1 
#>


# STIG WN10-AU-000031

New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\FVE" -Force | Out-Null
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\FVE" -Name "UseAdvancedStartup" -Type DWord -Value 1
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\FVE" -Name "UseTPMPIN" -Type DWord -Value 1
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\FVE" -Name "UseTPMKeyPIN" -Type DWord -Value 1



# To verify that STIG WN10-AU-000031 is implemented, run this command in an elevated Command Prompt or PowerShell:

# reg query "HKLM\SOFTWARE\Policies\Microsoft\FVE"

<# Look for these entries with the specified values:

UseAdvancedStartup REG_DWORD 0x1

UseTPMPIN REG_DWORD 0x1 (or 0x2 for network unlock)

UseTPMKeyPIN REG_DWORD 0x1 (or 0x2 for network unlock)


#>



