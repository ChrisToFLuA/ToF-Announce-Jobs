ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('ajob:verifjob')
AddEventHandler('ajob:verifjob', function(text)
    local xPlayer = ESX.GetPlayerFromId(source)
    local jobP = xPlayer.job.name

    -------------------------------------------------------------------
    --------------------------- list of jobs --------------------------
    -------------------------------------------------------------------

    local jobS = { -- add here the jobsname like in sql (not the label)
        {name = 'police'},            
        {name = 'ambulance'},
        {name = 'mechanic'},
        --{name = 'jobname'},
        --{name = 'jobname'},
        --{name = 'jobname'},
        --{name = 'jobname'},
        --{name = 'jobname'},
        --{name = 'jobname'},
        --{name = 'jobname'},
        --{name = 'jobname'},
        --{name = 'jobname'},
        --{name = 'jobname'},
        --{name = 'jobname'},
        --{name = 'jobname'},
        --{name = 'jobname'},
       }

    -------------------------------------------------------------------
    ------------------------ end of the list --------------------------
    -------------------------------------------------------------------

    for s = 1,#jobS,1 do
        if jobP == jobS[s].name then
            TriggerEvent('ajob:allannonce', jobP, text)
        end
    end
end)

RegisterServerEvent('ajob:allannonce')
AddEventHandler('ajob:allannonce', function(job, text)
    TriggerClientEvent('ajob:allannonce', -1, job, text)    
    print(text)
end)