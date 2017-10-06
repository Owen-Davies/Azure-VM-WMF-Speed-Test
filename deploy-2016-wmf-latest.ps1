$subscriptionId = "<YOUR_SUBSCRIPTION_ID_HERE>"
Select-AzureRmSubscription -SubscriptionId $subscriptionId

$resourceGroup = "wmftest2016-wmf-latest"
$location = "West Europe"

New-AzureRmResourceGroup -Name $resourceGroup -Location $location

New-AzureRmResourceGroupDeployment `
    -Name test-infra-deployment `
    -ResourceGroupName $resourceGroup `
    -TemplateFile wmf-test.json `
    -vmName "2016wmflatest" `
    -wmfVersion "latest" `
    -windowsSKU "2016-Datacenter" `
    -Verbose -Force