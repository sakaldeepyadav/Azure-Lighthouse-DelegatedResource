Login-AzAccount
Get-AzSubscription
$context = Get-AzSubscription -SubscriptionId xxxxxxx-axxx-xxx4-xxx-xxxxx
Set-AzContext $context
New-azdeployment -Name "AUGN" -Location westeurope -TemplateFile .\delegatedResourceManagement.json -TemplateParameterFile .\delegatedResourceManagement.parameters.json
