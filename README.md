# **THIS MODULE HAS BEEN DEPRECATED**

It will no longer be released.
Please use the 'PowerShellExecutionPolicy' resource in [ComputerManagementDsc](https://github.com/PowerShell/ComputerManagementDsc)
instead.

## xPowerShellExecutionPolicy

The **xPowerShellExecutionPolicy** modules contains the **xPowerShellExecutionPolicy** DSC resource for configuring the PowerShell execution policy.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Branches

### master

[![Build status](https://ci.appveyor.com/api/projects/status/y2ohjd5q86oagghu/branch/master?svg=true)](https://ci.appveyor.com/project/PowerShell/xPowerShellExecutionPolicy/branch/master)
[![codecov](https://codecov.io/gh/PowerShell/xPowerShellExecutionPolicy/branch/master/graph/badge.svg)](https://codecov.io/gh/PowerShell/xPowerShellExecutionPolicy/branch/master)

This is the branch containing the latest release -
no contributions should be made directly to this branch.

### dev

[![Build status](https://ci.appveyor.com/api/projects/status/y2ohjd5q86oagghu/branch/dev?svg=true)](https://ci.appveyor.com/project/PowerShell/xPowerShellExecutionPolicy/branch/dev)
[![codecov](https://codecov.io/gh/PowerShell/xPowerShellExecutionPolicy/branch/dev/graph/badge.svg)](https://codecov.io/gh/PowerShell/xPowerShellExecutionPolicy/branch/dev)

This is the development branch
to which contributions should be proposed by contributors as pull requests.
This development branch will periodically be merged to the master branch,
and be released to [PowerShell Gallery](https://www.powershellgallery.com/).

## Contributing

Please check out common DSC Resources [contributing guidelines](https://github.com/PowerShell/DscResource.Kit/blob/master/CONTRIBUTING.md).

## Resources

### xPowerShellExecutionPolicy

* **ExecutionPolicy**: Specifies the desired PowerShell execution policy.
* **ExecutionPolicyScope**: Specifies the scope of the desired PowerShell execution policy. Defaults to 'LocalMachine'.

## Versions

### Unreleased

### 3.1.0.0

* Deprecated this module. This resource module will no longer be released. Please use the PowerShellExecutionPolicy resource in ComputerManagementDsc instead.

### 3.0.0.0

* Fixed bug in which unit tests were not being run and also when run would have failed ([issue #17](https://github.com/PowerShell/xPowerShellExecutionPolicy/issues/17)). [Michael Fyffe (@TraGicCode)](https://github.com/TraGicCode)
  * Fixed PSSA Issues as well.
  * Fixed Markdown Linting issues as well.
* Enabled Code Coverage Support ([issue #18](https://github.com/PowerShell/xPowerShellExecutionPolicy/issues/18)). [Michael Fyffe (@TraGicCode)](https://github.com/TraGicCode)
* BREAKING CHANGE: Renamed the 'Scope' Parameter to 'ExecutionPolicyScope' since errors are thrown when the MOF file is parsed because 'Scope' is a reserved keyword in the DMTF Specification. ([issue #14](https://github.com/PowerShell/xPowerShellExecutionPolicy/issues/14)). [Michael Fyffe (@TraGicCode)](https://github.com/TraGicCode)

### 2.0.0.0

* Converted appveyor.yml to install Pester from PSGallery instead of from Chocolatey.
* Added optional -Scope parameter

### 1.1.0.0

* Added test cases and Set now throws most exceptions

### 1.0.0.0

* Initial release with the following resources
  * xPowerShellExecutionPolicy

## Examples

### Setting the PowerShell execution policy to Bypass

In the Examples folder, SetPowerShellExecutionPolicy.ps1 is a sample configuration that demonstrates how to use xPowerShellExecutionPolicy to set the execution policy.
