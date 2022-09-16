ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('ajob:verifjob')
AddEventHandler('ajob:verifjob', function(text)
    local xPlayer = ESX.GetPlayerFromId(source)
    local jobP = xPlayer.job.name

    -------------------------------------------------------------------
    --------------------------- list of jobs --------------------------
    -------------------------------------------------------------------

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
    -------------------------------------------------------------------
    ------------------------ end of the list --------------------------
    -------------------------------------------------------------------

    for s = 1,#jobC,1 do
        if jobP == jobC[s].nameJ then
            local title = jobC[s].labelJ
            local pos = jobC[s].positionJ
            local timer = jobC[s].durationJ
            local bgc = jobC[s].bgcolor
            local ctxt = jobC[s].txtcolor
            local icont = jobC[s].iconJ
            local iconc = jobC[s].iconcolorJ
            TriggerClientEvent('ajob:allannonce', -1, text, title, pos, timer, bgc, ctxt, icont, iconc)
        end
    end
end)