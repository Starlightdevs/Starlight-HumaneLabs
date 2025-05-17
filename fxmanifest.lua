fx_version 'cerulean'
game 'gta5'

author 'Bobby@StarLight'
description 'HumaneLabs Notify'
version '2.0.0'

lua54 'yes'


client_script {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/CircleZone.lua',
    'client.lua'
}



shared_scripts {
    '@ox_lib/init.lua'
}

dependencies {
    'PolyZone'
}
