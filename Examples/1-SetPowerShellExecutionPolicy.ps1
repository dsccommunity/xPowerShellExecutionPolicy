<#
.EXAMPLE
    This example shows how to configure powershell's execution policy for the specified execution policy scope.
#>

Configuration Example
{
    Import-DscResource -ModuleName xPowerShellExecutionPolicy

    Node localhost
    {
        xPowerShellExecutionPolicy ExecutionPolicy
        {
            ExecutionPolicy      = 'RemoteSigned'
            ExecutionPolicyScope = 'LocalMachine'
        }
    }
}
