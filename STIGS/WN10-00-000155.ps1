<#
.SYNOPSIS
    Run this command in an elevated PowerShell window (Run as Administrator).
This command disables both PowerShell 2.0 and the PowerShell 2.0 Engine, directly addressing the STIG requirement.

.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-22
    Last Modified   : 2025-09-22
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000155 

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-00-000155).ps1 
#>


#Disable Code
Disable-WindowsOptionalFeature -Online -FeatureName MicrosoftWindowsPowerShellV2Root

# To check if it excuted
# Get-WindowsOptionalFeature -Online | Where-Object FeatureName -like "*PowerShellv2*"

<# Look for these features in the output:

MicrosoftWindowsPowerShellV2

MicrosoftWindowsPowerShellV2Root

If the "State" for both features is "Disabled," then STIG WN10-00-000155 is correctly implemented.





#>
