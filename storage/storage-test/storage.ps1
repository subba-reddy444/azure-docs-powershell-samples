Connect-AzAccount
Select-AzSubscription -SubscriptionName "Visual Studio Professional Subscription"
$resourcegroupname = "subbu-rsg01"
$location = "eastus"
$storageaccountname = "subbustorage"
New-AzResourceGroup -Name $resourcegroupname -Location $location
New-AzStorageAccount -ResourceGroupName $resourcegroupname -AccountName $storageaccountname -Location $location -SkuName Standard_GRS