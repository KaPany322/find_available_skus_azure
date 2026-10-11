# 1. Fetch and filter all permitted SKUs
$availableSkus = Get-AzComputeResourceSku | Where-Object {
    $_.ResourceType -eq "virtualMachines" -and
    $_.Restrictions.ReasonCode -notcontains "NotAvailableForSubscription"
}

# 2. Reformat the table properties
$formattedReport = $availableSkus | Select-Object `
    @{Name="Region"; Expression={$_.Locations[0].ToLower()}},
    @{Name="VM_Size"; Expression={$_.Name}}

# 3. Save to CSV-file
$formattedReport | Export-Csv -Path ".\MyAvailableVMs.csv" -NoTypeInformation
