# Use the power of loop to create multiple web apps using Do-While Loop

$ResourceGroupName = "demo-ps-multiple"
$webappname="demo-ps-webapp"
$location="East US"
$NumberOfWebApps= 3

# Deploy web apps using powershell
New-AzResourceGroup -Name $ResourceGroupName -Location $location
New-AzAppServicePlan -Name $webappname -Location $location -ResourceGroupName $ResourceGroupName -Tier Free

# Create a loop
$i=1
Do
{
  New-AzureRmWebApp -Name $webappname'-0'$i -Location $location -AppServicePlan $webappname -ResourceGroupName $ResourceGroupName
} 
While 
  (($i=$i+1) -le $NumberOfWebApps)
  
  
# delete resource at the end
Remove-AzureRmResourceGroup -Name $ResourceGroupName -Force
