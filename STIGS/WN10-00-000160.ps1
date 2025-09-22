<#
.SYNOPSIS
    This disables the SMBv1 protocol, addressing the STIG requirement. If the command completes successfully, SMBv1 support is removed from the system's optional Windows features.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-22
    Last Modified   : 2025-09-22
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000160 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-00-000160).ps1 
#>


Disable-WindowsOptionalFeature -Online -FeatureName SMB1Protocol


<# To check if SMBv1 is disabled on your system, use this PowerShell command:


Get-WindowsOptionalFeature -Online | Where-Object FeatureName -eq "SMB1Protocol"


If the result shows State : Disabled, then SMBv1 has been successfully disabled and the system complies with STIG WN10-00-000160. If it says "Enabled," SMBv1 is still active.




#>
