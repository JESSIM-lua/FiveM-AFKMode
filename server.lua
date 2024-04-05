ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



RegisterServerEvent('Checkmoney')
AddEventHandler('Checkmoney', function(amount)
    local _src = source
	local xPlayer = ESX.GetPlayerFromId(_src)
	xPlayer.addMoney(1)
end)
