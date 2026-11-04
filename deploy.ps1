# Keep the existing stack name: it already manages the prod resources.
$environmentName = 'prod'

New-AzResourceGroupDeploymentStack `
  -Name 'contoso-orders-dev' `
  -ResourceGroupName 'ignite2026' `
  -TemplateFile './main.bicep' `
  -TemplateParameterFile './shared.bicepparam' `
  -environmentName $environmentName `
  -ActionOnUnmanage DeleteResources `
  -DenySettingsMode None