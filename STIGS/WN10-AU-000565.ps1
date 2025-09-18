<#
.SYNOPSIS
    This audit policy ensures Windows 10 records failed "Other Logon/Logoff Events," supporting incident detection and forensic investigations.
.NOTES
    Author          : Marlon Smikle
    LinkedIn        : linkedin.com/in/marlonsmikle/
    GitHub          : github.com/MarlonS9
    Date Created    : 2025-09-18
    Last Modified   : 2025-09-18
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000565

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\(STIG-ID-WN10-AU-000565).ps1 
#>



# Ensure failure (and optionally success) auditing for 'Other Logon/Logoff Events'
$subcategory = 'Other Logon/Logoff Events'

# Enable auditing for failures (add /success:enable for both)
Start-Process -FilePath 'auditpol.exe' `
    -ArgumentList @("/set", "/subcategory:`"$subcategory`"", "/failure:enable") `
    -NoNewWindow -Wait

# OPTIONAL: Enable auditing for both successes and failures
# Start-Process -FilePath 'auditpol.exe' `
#    -ArgumentList @("/set", "/subcategory:`"$subcategory`"", "/success:enable", "/failure:enable") `
#    -NoNewWindow -Wait

# Force group policy refresh (optional)
gpupdate /force
