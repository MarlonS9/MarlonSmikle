<#
.SYNOPSIS
   Storing passwords using reversible encryption is essentially the same as storing clear-text versions of the passwords. For this reason, this policy must never be enabled.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-23
    Last Modified   : 2025-09-23
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000045  

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-AC-000045).ps1 
#>


# Set 'Store passwords using reversible encryption' to disabled (value 0)
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" -Name "DisablePasswordClear" -Value 1

# Or, using secedit method for automation:
secedit /export /cfg C:\secpol.cfg
(gc C:\secpol.cfg) -replace 'ClearTextPassword = 1', 'ClearTextPassword = 0' | Set-Content C:\secpol.cfg
secedit /configure /db secedit.sdb /cfg C:\secpol.cfg /areas SECURITYPOLICY
Remove-Item C:\secpol.cfg


<# After applying the change, check the Local Security Policy or use: 

 Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" -Name "DisablePasswordClear"

 The value should be 1 indicating reversible password encryption is disabled.

 #>
