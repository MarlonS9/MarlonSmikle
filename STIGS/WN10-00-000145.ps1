<#
.SYNOPSIS
   Data Execution Prevention (DEP) to be configured to at least "OptOut" on Windows 10. 


.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-23
    Last Modified   : 2025-09-23
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000145  

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-00-000145).ps1 
#>



# Run this command in Command Prompt:

bcdedit /set {current} nx OptOut

# This sets DEP to "OptOut," meaning DEP is enabled for all processes except those the administrator specifically excludes.

<# To check Run this in Command Prompt:

bcdedit /enum {current}

Look for the line nx—it should show OptOut.

#>
