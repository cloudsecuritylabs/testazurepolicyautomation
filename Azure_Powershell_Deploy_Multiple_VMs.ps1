# Use the power of loop to create multiple VMs using Do-While Loop

$ResourceGroupName = "demo-ps-multiple"
$vmname="demo-vm"
$location="East US"
$NumberOfVms= 3

# Deploy VMs using powershell
New-AzResourceGroup -Name $ResourceGroupName -Location $location
New-AzAppServicePlan -Name $webappname -Location $location -ResourceGroupName $ResourceGroupName -Tier Standard

# Create a loop
$i=1
Do
{
  New-AzureRmVm -ResourceGroupName $ResourceGroupName -Name $vmName"-0"$i -Location $location -VirtualNetworkName $vmName"-Vnet" -SubnetName $vmName"-subnet" -SecurityGroupName $vmName"-nsg" -PublicIpAddressName $vmName"-IP-"$i -OpenPorts 80,443,3389
} 
While 
  (($i=$i+1) -le $NumberOfVms)
  
  
# delete resource at the end
Remove-AzureRmResourceGroup -Name $ResourceGroupName -Force
