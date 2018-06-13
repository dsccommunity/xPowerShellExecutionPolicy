@{
# Script module or binary module file associated with this manifest.

# Version number of this module.

moduleVersion = '3.0.0.0'

# ID used to uniquely identify this module
GUID = 'ee440155-d4cc-4ec8-9822-2a9bd7d8c82f'

# Author of this module
Author = 'OneScript Team'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = '(c) 2014 Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'This DSC Resources can change the user preference for the Windows PowerShell execution policy.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '4.0'

# Functions to export from this module
FunctionsToExport = 'Get-TargetResource', 'Test-TargetResource', 'Set-TargetResource'

# Cmdlets to export from this module
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module
AliasesToExport = '*'

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('DesiredStateConfiguration', 'DSC', 'DSCResourceKit', 'DSCResource')

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/PowerShell/xPowerShellExecutionPolicy/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/PowerShell/xPowerShellExecutionPolicy'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* Fixed bug in which unit tests were not being run and also when run would have failed ([issue 17](https://github.com/PowerShell/xPowerShellExecutionPolicy/issues/17)). [Michael Fyffe (@TraGicCode)](https://github.com/TraGicCode)
  * Fixed PSSA Issues as well.
  * Fixed Markdown Linting issues as well.
* Enabled Code Coverage Support ([issue 18](https://github.com/PowerShell/xPowerShellExecutionPolicy/issues/18)). [Michael Fyffe (@TraGicCode)](https://github.com/TraGicCode)
* BREAKING CHANGE: Renamed the "Scope" Parameter to "ExecutionPolicyScope" since errors are thrown when the MOF file is parsed because "Scope" is a reserved keyword in the DMTF Specification. ([issue 14](https://github.com/PowerShell/xPowerShellExecutionPolicy/issues/14)). [Michael Fyffe (@TraGicCode)](https://github.com/TraGicCode)

'

    } # End of PSData hashtable

} # End of PrivateData hashtable
}



