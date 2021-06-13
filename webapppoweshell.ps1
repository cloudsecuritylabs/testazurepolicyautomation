$ResourceGroupName = "demo-ps"
$webappname= "demo-ps-webapp-01" 
$location= "East US" 

New-AzResourceGroup -Name $ResourceGroupName -Location $location 
New-AzAppServicePlan -Name $webappname -Location $location -ResourceGroupName $ResourceGroupName -Tier Free
New-AzWebApp -Name $webappname -Location $location -AppServicePlan $webappname -ResourceGroupName $ResourceGroupName

#Detete stuff when done
Remove-AzResourceGroup -Name $ResourceGroupName -Force
