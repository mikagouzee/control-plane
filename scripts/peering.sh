az network vnet peering create --name cp2back --resource-group rg-t7 --vnet-name mgzt7vnet --remote-vnet /subscriptions/b371c9ef-ea0e-43f0-8c07-36bf437c26d2/resourceGroups/ehealth-dev-rg-t7/providers/Microsoft.Network/virtualNetworks/ehealth-vnet-t7 --allow-vnet-access

az network vnet peering create --name back2cp --resource-group EHEALTH-DEV-RG-T7 --vnet-name ehealth-vnet-t7 --remote-vnet /subscriptions/b371c9ef-ea0e-43f0-8c07-36bf437c26d2/resourceGroups/rg-t7/providers/Microsoft.Network/virtualNetworks/mgzt7vnet --allow-vnet-access
