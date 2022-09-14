fx_version 'cerulean'
games {'gta5'}

lua54 'yes'

name         'tofannouncejobs'
version      '1.0.0'
description  'Job Announce system'
author       'ChrisToF29380'
repository   'https://github.com/ChrisToFLuA'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'server/*.lua'
}

client_scripts {
	'client/*.lua',
}

shared_scripts {
	'shared/*.lua',
	'@ox_lib/init.lua',
}