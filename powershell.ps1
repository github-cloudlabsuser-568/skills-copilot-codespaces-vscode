# Variables
$resourceGroupName = "example-resources"
$location = "East US"
$storageAccountName = "examplestorageaccount"
$skuName = "Standard_LRS" # Standard Locally-Redundant Storage

# Create a new resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a new storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                     -Name $storageAccountName `
                     -Location $location `
                     -SkuName $skuName `
                     -Kind "StorageV2" # General-purpose v2 account

# Output the storage account keys
Get-AzStorageAccountKey -ResourceGroupName $resourceGroupName -Name $storageAccountName