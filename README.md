[![Build status](https://ci.appveyor.com/api/projects/status/y2ohjd5q86oagghu/branch/master?svg=true)](https://ci.appveyor.com/project/PowerShell/xpowershellexecutionpolicy/branch/master)

# xPowerShellExecutionPolicy

The **xPowerShellExecutionPolicy** modules contains the **xPowerShellExecutionPolicy** DSC resource for configuring the PowerShell execution policy.


This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Contributing

Please check out common DSC Resources [contributing guidelines](https://github.com/PowerShell/DscResource.Kit/blob/master/CONTRIBUTING.md).


## Resources

### xPowerShellExecutionPolicy

* **ExecutionPolicy**: Specifies the desired PowerShell execution policy.
* **Scope**: Specifies the scope of the desired PowerShell execution policy. Defaults to 'LocalMachine'.


## Versions

### Unreleased

### 2.0.0.0

* Converted appveyor.yml to install Pester from PSGallery instead of from Chocolatey.
* Added optional -Scope parameter

### 1.1.0.0

* Added test cases and Set now throws most exceptions

### 1.0.0.0

* Initial release with the following resources 
    - xPowerShellExecutionPolicy


## Examples

### Setting the PowerShell execution policy to Bypass 

In the Examples folder, SetPowerShellExecutionPolicy.ps1 is a sample configuration that demonstrates how to use xPowerShellExecutionPolicy to set the execution policy.
