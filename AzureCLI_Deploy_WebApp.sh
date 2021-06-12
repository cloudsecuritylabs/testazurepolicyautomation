$webappname='demo-cli-webapp-01'
$ResourceGroupName ='demo-cli'

az group create --location eastus --name $ResourceGroupName
az appservice plan create --name $webappname --resource-group $ResourceGroupName --sku Freea
az webapp create --name $webappname --resource-group $ResourceGroupName --plan $webappname
