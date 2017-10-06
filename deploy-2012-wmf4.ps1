$subscriptionId = "<YOUR_SUBSCRIPTION_ID_HERE>"
Select-AzureRmSubscription -SubscriptionId $subscriptionId

$resourceGroup = "wmftest2012-wmf4"
$location = "West Europe"

New-AzureRmResourceGroup -Name $resourceGroup -Location $location

New-AzureRmResourceGroupDeployment `
    -Name test-infra-deployment `
    -ResourceGroupName $resourceGroup `
    -TemplateFile wmf-test.json `
    -vmName "2012wmf4" `
    -wmfVersion "4.0" `
    -Verbose -Force