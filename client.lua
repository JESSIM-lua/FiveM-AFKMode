local on = false
local money = false

function display(bool)
    on = bool
    SetNuiFocus(on, on)
    SendNUIMessage({
        status = on,
    })
end


RegisterNUICallback('exit', function(data)
    display(false)
end)



RegisterNUICallback('accept', function(data)
    display(false)
    local entity = PlayerPedId()
    local alpha = 255

    SetEntityAlpha(entity, alpha, false)
    FreezeEntityPosition(entity, false)
    SetNuiFocus(false, false)
    SetTimecycleModifier('default')
    SetNuiFocus(false, false)

    SetFrontendActive(false)

    ActivateFrontendMenu(GetHashKey("FE_MENU_VERSION_EMPTY_NO_BACKGROUND"), false, -1)
    money = false
    Citizen.Wait(100)

    N_0x98215325a695e78a(false)
end)


RegisterCommand('afk', function(source, args)
    local entity = PlayerPedId()
    local alpha = 80
    local posEnt = GetEntityCoords(entity)

    local beet = GetDistanceBetweenCoords(179.7772, -969.6066, 29.5792, posEnt.x, posEnt.y, posEnt.z,false)
    print(beet)
            
    if beet < 20 then
        display(not on)
        SetEntityAlpha(entity, alpha, false)
        FreezeEntityPosition(entity, true)
        print('its good')
        SetPauseMenuActive(false)
        StartScreenEffect(blur, 1, true)
        heading = GetEntityHeading(PlayerPedId())
        ReplaceHudColourWithRgba(117, 0, 0, 0, 0)
        ActivateFrontendMenu(GetHashKey("FE_MENU_VERSION_EMPTY_NO_BACKGROUND"), true, -1)
        Citizen.Wait(100)
        N_0x98215325a695e78a(false)
        money = not money
    else
        print('not in zone')
    end
end)


Citizen.CreateThread(function()
	while true do
		Wait(500)

		if money then
            TriggerServerEvent('Checkmoney')
        end
    end
end)