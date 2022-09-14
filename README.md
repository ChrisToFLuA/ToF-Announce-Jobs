# Announce Job with only 1 command chat for all jobs

a simple script using ox_lib to allow your players to make announces about their job, with a same command for all jobs.
- Forum link : https://forum.cfx.re/t/free-tof-announce-jobs-using-ox-lib/4910725

# Dependencies 
- ox_lib : https://github.com/overextended/ox_lib

# Configuration 
You can modify :
- name of the command
- labelJ : Title of the announce
- postionJ : 'top' | 'top-right' | 'top-left' | 'bottom' | 'bottom-right' | 'bottom-left'
- durationJ : time in ms the message will be viewed
- for the colors fields use link : https://htmlcolorcodes.com/fr/ - and use HEX to copy / paste on the fields
- iconJ : use link https://fontawesome.com/search?o=r&f=sharp

# Server-side configuration
```
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
}
```
# Client-side configuration

```
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
```

```
	local jobC = {
        {nameJ = 'police', labelJ = 'LSPD', positionJ = 'top-right', durationJ = 5000, bgcolor = '#4B26D3', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        {nameJ = 'ambulance', labelJ = 'EMS', positionJ = 'top-right', durationJ = 5000, bgcolor = '#0193F8', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        {nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
    }
```
