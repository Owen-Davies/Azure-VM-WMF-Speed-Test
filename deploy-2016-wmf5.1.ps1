$subscriptionId = "<YOUR_SUBSCRIPTION_ID_HERE>"
Select-AzureRmSubscription -SubscriptionId $subscriptionId

$resourceGroup = "wmftest2016-wmf5.1"
$location = "West Europe"

New-AzureRmResourceGroup -Name $resourceGroup -Location $location

New-AzureRmResourceGroupDeployment `
    -Name test-infra-deployment `
    -ResourceGroupName $resourceGroup `
    -TemplateFile wmf-test.json `
    -vmName "2016wmf51" `
    -wmfVersion "5.1" `
    -windowsSKU "2016-Datacenter" `
    -Verbose -Force