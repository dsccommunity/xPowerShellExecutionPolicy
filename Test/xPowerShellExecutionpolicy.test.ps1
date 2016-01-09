$Module = "$PSScriptRoot\..\DSCResources\xPowerShellExecutionPolicy\xPowerShellExecutionPolicy.psm1" 
Remove-Module -Name xPowerShellExecutionPolicy -Force -ErrorAction SilentlyContinue 
Import-Module -Name $Module -Force -ErrorAction Stop 
 
 
InModuleScope xPowerShellExecutionPolicy { 

    Describe 'xPowerShellExecutionPolicy' {

        Context Get-TargetResource {

            It 'Throws when passed an invalid execution policy' {
                { Get-TargetResource -ExecutionPolicy 'badParam' } | should throw
            }

            It 'Returns correct execution policy' {
                $result = Get-TargetResource -ExecutionPolicy $(Get-ExecutionPolicy) 

                $result.ExecutionPolicy | should be $(Get-ExecutionPolicy)
            } 
        }

        Context Test-TargetResource {

            It 'Throws when passed an invalid execution policy' {
                { Test-TargetResource -ExecutionPolicy 'badParam' } | should throw
            }
           
            It 'Returns true when current policy matches desired policy' {
                Test-TargetResource -ExecutionPolicy $(Get-ExecutionPolicy) | should be $True 
            }         

            It 'Returns false when current policy does not match desired policy' {
                Mock -CommandName Get-ExecutionPolicy -MockWith { "Restricted" }

                Test-TargetResource -ExecutionPolicy "Bypass" | should be $false 
            }
        }        
        
        Context Set-TargetResource {

            It 'Throws when passed an invalid execution policy' {
                { Set-TargetResource -ExecutionPolicy 'badParam' } | should throw
            }

            It 'Set-ExecutionPolicy scope warning exception is caught' {
                Mock -CommandName Set-ExecutionPolicy -MockWith { Throw 'Windows PowerShell updated your execution policy successfully.' } 

                $result = Set-TargetResource -ExecutionPolicy "Bypass"

                $result | should be $null
            } 

            It 'Throws non-caught exceptions'{
                Mock -CommandName Set-ExecutionPolicy -MockWith { Throw 'Throw me!' } 

                { Set-TargetResource -ExecutionPolicy "Bypass" } | should throw
            } 

            It 'Sets execution policy' {
                Mock -CommandName Set-ExecutionPolicy -MockWith { } 

                Set-TargetResource -ExecutionPolicy "Bypass"

                Assert-MockCalled -CommandName Set-ExecutionPolicy -Exactly 1 -Scope It             
            }
        }
    }
}