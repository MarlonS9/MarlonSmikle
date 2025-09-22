<#
.SYNOPSIS
    This command writes the value 0 (disabled) to the SMB1 DWORD under the specified path. The change will take effect after the system is restarted.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-22
    Last Modified   : 2025-09-22
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000165 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-00-000165).ps1 
#>


Get-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters' -Name 'SMB1'



<# To check if SMBv1 is disabled on your system, use this PowerShell command:


Get-SmbServerConfiguration | Format-List EnableSMB1Protocol


If the result is EnableSMB1Protocol : False, SMBv1 is disabled.




#>
