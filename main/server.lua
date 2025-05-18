ESX = exports["es_extended"]:getSharedObject()

for item, itemData in pairs(Config.Items) do
    ESX.RegisterUsableItem(item, function(source)
        TriggerClientEvent('showPackageMenu', source, item, Config.Delay)
    end)
end

RegisterNetEvent('package:open')
AddEventHandler('package:open', function(packageName)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local itemData = Config.Items[packageName]
    if not itemData then return end

    if xPlayer.getInventoryItem(packageName).count > 0 then
        xPlayer.removeInventoryItem(packageName, 1)
        if itemData.items and type(itemData.items) == "table" then
            for _, reward in ipairs(itemData.items) do
                local count = reward.count or 1
                xPlayer.addInventoryItem(reward.name, count)
                local itemLabel = ESX.GetItemLabel and ESX.GetItemLabel(reward.name) or reward.name
                local message = string.format(
                    Translation[Config.Locale]['text'],
                    count,
                    itemLabel,
                    itemData.name
                )
                TriggerClientEvent('esx:showNotification', source, message)
            end
        else
            local newItemCount = itemData.newItemCount or 1
            xPlayer.addInventoryItem(itemData.newItem, newItemCount)
            local itemLabel = ESX.GetItemLabel and ESX.GetItemLabel(itemData.newItem) or itemData.newItem
            local message = string.format(
                Translation[Config.Locale]['text'],
                newItemCount,
                itemLabel,
                itemData.name
            )
            TriggerClientEvent('esx:showNotification', source, message)
        end
    else
        TriggerClientEvent('esx:showNotification', source, Translation[Config.Locale]['text_2'] .. itemData.name .. Translation[Config.Locale]['point'])
    end
end)