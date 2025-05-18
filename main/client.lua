ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('startProgressEvent')
AddEventHandler('startProgressEvent', function(delay)
    exports.sc_progress:showNUI(delay, "Loading...")
    local dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@'
    local anim = 'machinic_loop_mechandplayer'
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Wait(10)
    end
    local playerPed = PlayerPedId()
    TaskPlayAnim(playerPed, dict, anim, 8.0, -8.0, delay, 1, 0, false, false, false)
    Wait(delay)
    ClearPedTasks(playerPed)
end)

local packageProp = nil
local packagePropCoords = nil
local packagePropName = nil
local packagePropDelay = nil
local holdingPackage = false
local placedPackage = false

RegisterNetEvent('showPackageMenu')
AddEventHandler('showPackageMenu', function(packageName, delay)
    local playerPed = PlayerPedId()
    local model = GetHashKey('prop_cs_package_01')
    RequestModel(model)
    while not HasModelLoaded(model) do Wait(10) end
    if packageProp then
        DeleteEntity(packageProp)
        packageProp = nil
    end
    local x, y, z = table.unpack(GetEntityCoords(playerPed))
    packageProp = CreateObject(model, x, y, z + 0.2, true, true, true)
    AttachEntityToEntity(packageProp, playerPed, GetPedBoneIndex(playerPed, 57005), 0.13, 0.02, -0.02, 100.0, 180.0, 80.0, true, true, false, true, 1, true)
    SetEntityAsMissionEntity(packageProp, true, true)
    packagePropName = packageName
    packagePropDelay = delay
    holdingPackage = true
    placedPackage = false
    ESX.ShowHelpNotification(Translation[Config.Locale]['help_place_or_stow'])
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local playerPed = PlayerPedId()
        if holdingPackage and packageProp then
            if IsControlJustReleased(0, 38) then
                local x, y, z = table.unpack(GetEntityCoords(playerPed))
                DetachEntity(packageProp, true, true)
                SetEntityCoords(packageProp, x, y, z - 1.0, false, false, false, true)
                PlaceObjectOnGroundProperly(packageProp)
                packagePropCoords = GetEntityCoords(packageProp)
                holdingPackage = false
                placedPackage = true
                ESX.ShowHelpNotification(Translation[Config.Locale]['help_open_or_pickup'])
            elseif IsControlJustReleased(0, 47) then
                DeleteEntity(packageProp)
                packageProp = nil
                holdingPackage = false
                placedPackage = false
                packagePropCoords = nil
                packagePropName = nil
                packagePropDelay = nil
                ESX.ShowNotification(Translation[Config.Locale]['notify_stowed'])
            end
        elseif placedPackage and packageProp and packagePropCoords then
            local playerCoords = GetEntityCoords(playerPed)
            local dist = #(playerCoords - packagePropCoords)
            if dist < 2.0 then
                ESX.ShowHelpNotification(Translation[Config.Locale]['help_open_or_pickup'])
                if IsControlJustReleased(0, 38) then
                    exports.sc_progress:showNUI(packagePropDelay, Translation[Config.Locale]['progress_loading'])
                    local dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@'
                    local anim = 'machinic_loop_mechandplayer'
                    RequestAnimDict(dict)
                    while not HasAnimDictLoaded(dict) do
                        Wait(10)
                    end
                    TaskPlayAnim(playerPed, dict, anim, 8.0, -8.0, packagePropDelay, 1, 0, false, false, false)
                    Wait(packagePropDelay)
                    ClearPedTasks(playerPed)
                    DeleteEntity(packageProp)
                    packageProp = nil
                    placedPackage = false
                    packagePropCoords = nil
                    TriggerServerEvent('package:open', packagePropName)
                    packagePropName = nil
                    packagePropDelay = nil
                elseif IsControlJustReleased(0, 47) then
                    AttachEntityToEntity(packageProp, playerPed, GetPedBoneIndex(playerPed, 57005), 0.13, 0.02, -0.02, 100.0, 180.0, 80.0, true, true, false, true, 1, true)
                    holdingPackage = true
                    placedPackage = false
                    packagePropCoords = nil
                    ESX.ShowHelpNotification(Translation[Config.Locale]['help_place_or_stow'])
                end
            end
        else
            Citizen.Wait(500)
        end
    end
end)