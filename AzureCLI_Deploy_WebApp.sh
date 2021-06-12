# Create an sample web app using Azure CLI
webappname='demo-cli-webapp-01'
ResourceGroupName='demo-cli'

# Deploy sample web app
az group create --location eastus --name $ResourceGroupName
az appservice plan create --name $webappname --resource-group $ResourceGroupName --sku Free
az webapp create --name $webappname --resource-group $ResourceGroupName --plan $webappname
