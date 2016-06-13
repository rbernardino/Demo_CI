
Import-Module $PSScriptRoot\..\Assets\DscPipelineTools\DscPipelineTools.psd1 -Force


# Define Unit Test Environment
$UnitTestEnvironment = @{
    Name                        = 'Test';
    Roles = @(
        @{  Role                = 'DNSServer';
            VMName              = 'TestAgent1';
        }
    )
}

Return New-DscConfigurationDataDocument -RawEnvData $UnitTestEnvironment -OutputPath $PSScriptRoot\Configs