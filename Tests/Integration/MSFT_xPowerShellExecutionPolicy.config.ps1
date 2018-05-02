
# Integration Test Config Template Version: 1.0.0
configuration MSFT_xPowerShellExecutionPolicy_config {
    # TODO: Modify ModuleName (e.g. xNetworking)
    Import-DscResource -ModuleName 'xPowerShellExecutionPolicy'
    node localhost {
        xPowerShellExecutionPolicy Integration_Test
        {
            ExecutionPolicy      = 'RemoteSigned'
            ExecutionPolicyScope = 'LocalMachine'
        }
    }
}
