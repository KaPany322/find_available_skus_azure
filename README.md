# Script to find all available SKUs in all regions

This script will create the CSV-file with all available SKUs  

## Prerequisites

Make sure you have all this done:

 - you have PowerShell 7.0 installed 

 - you already authorised to your Azure account
    ```
    Connect-AzAccount -TenantId <your Microsoft Entra ID tenant id>
    ```
## To start

Run the script "find_regions.ps1" with PowerShell

# Attention

Some of the regions might not supports by your account, make sure you checked that this region available for you via Azure Portal or command:

```
Get-AzLocation | Select-Object DisplayName, Location

```

or with bash

```
az account list-locations -o table

```
