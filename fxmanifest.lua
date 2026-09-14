fx_version 'cerulean'
game 'rdr3'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
lua54 'yes'

author 'Glitch0o'
description 'Easy event handler for RedM'
version '1.1.0'

shared_scripts {
    'shared/events.lua',
    'shared/config.lua'
}

client_scripts {
    'client/dataview.lua',
    'client/main.lua'
}

exports {
    'ListenTo',
    'RemoveListener'
}