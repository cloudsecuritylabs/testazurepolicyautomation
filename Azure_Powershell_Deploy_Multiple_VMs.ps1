# Use the power of loop to create multiple VMs using Do-While Loop

$ResourceGroupName = "demo-ps-multiple-vm"
$vmname="demo-vm"
$location="East US"
$NumberOfVms= 2

# Deploy VMs using powershell
New-AzResourceGroup -Name $ResourceGroupName -Location $location

# Create a loop
$i=1
Do
{
  New-AzVm -ResourceGroupName $ResourceGroupName -Name $vmName"-0"$i -Location $location -VirtualNetworkName $vmName"-Vnet" -SubnetName $vmName"-subnet" -SecurityGroupName $vmName"-nsg" -PublicIpAddressName $vmName"-IP-"$i -OpenPorts 80,443,3389
} 
While 
  (($i=$i+1) -le $NumberOfVms)
  
  
# delete resource at the end
Remove-AzResourceGroup -Name $ResourceGroupName -Force
