ESX = nil

local text = {}
local dead = false
local textann = {}
local namecommand = 'ann' -- modify the name of the commandchat here to publish an announce

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
	end

end)

RegisterCommand(namecommand, function(source, args, raw)
    local text = table.concat(args, " ")
    local dead = IsEntityDead(PlayerPedId())
		if dead == false then
			TriggerServerEvent('ajob:verifjob', text)
		end
end)

RegisterNetEvent('ajob:allannonce')
AddEventHandler('ajob:allannonce', function(textann, titlea, pos, timer, bgc, ctxt, icont, iconc)
    lib.notify({
        title = titlea,
        description = textann,
        position = pos,
        duration = timer,
        style = {
        backgroundColor = bgc,
        color = ctxt
        },
    icon = icont,
    iconColor = iconc
    })
end)
