<#
.EXAMPLE
    This example shows how to configure powershell's execution policy for the specified scope level.
#>

Configuration Example
{
    param(
        [Parameter(Mandatory = $true)]
        [System.Management.Automation.PSCredential]
        $SqlCredential
    )

    Import-DscResource -ModuleName xPowerShellExecutionPolicy

    Node localhost
    {
        xPowerShellExecutionPolicy ExecutionPolicy
        {
            ExecutionPolicy = 'RemoteSigned'
            ScopeLevel      = 'LocalMachine'
        }
    }
}
