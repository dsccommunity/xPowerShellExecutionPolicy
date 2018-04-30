<#
.EXAMPLE
    This example shows how to configure powershell's execution policy using the default scope level.
#>

Configuration Example
{
    Import-DscResource -ModuleName xPowerShellExecutionPolicy

    Node localhost
    {
        xPowerShellExecutionPolicy ExecutionPolicy
        {
            ExecutionPolicy = 'RemoteSigned'
        }
    }
}
