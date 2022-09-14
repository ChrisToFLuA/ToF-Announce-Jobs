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
AddEventHandler('ajob:allannonce', function(job, text)
    local textann = text
    publishAnn(textann, job)
end)

function publishAnn(textann, job)
    --------------------------------------------------------------------------------------------------------------
    -- add other jobs below in local jobC, copy / paste lines
    ----------------------------------------------------------
    ----------------------------------------------------------
    -- nameJ : name of the job in sql
    -- labelJ : Title of the announce
    -- postionJ : 'top' | 'top-right' | 'top-left' | 'bottom' | 'bottom-right' | 'bottom-left'
    -- durationJ : time in ms the message will be viewed
    -- for the colors fields use link : https://htmlcolorcodes.com/fr/ - and use HEX to copy / paste on the fields
    -- iconJ : use link https://fontawesome.com/search?o=r&f=sharp
    --------------------------------------------------------------------------------------------------------------
    local jobC = {
        {nameJ = 'police', labelJ = 'LSPD', positionJ = 'top-right', durationJ = 5000, bgcolor = '#4B26D3', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        {nameJ = 'ambulance', labelJ = 'EMS', positionJ = 'top-right', durationJ = 5000, bgcolor = '#0193F8', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        {nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        
    }
    --------------------------------------------------------------------------------------------------------------
    --------------------------------------------------------------------------------------------------------------
    for c = 1,#jobC,1 do
        if job == jobC[c].nameJ then
            lib.notify({
                title = jobC[c].labelJ,
                description = textann,
                position = positionJ,
                duration = durationJ,
                style = {
                backgroundColor = bgcolor,
                color = txtcolor
                },
            icon = iconJ,
            iconColor = iconcolorJ
            })
        end
    end
    --------------------------------------------------------------------------------------------------------------
end
