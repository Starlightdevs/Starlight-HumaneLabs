local HumaneLabsZone = PolyZone:Create({
    vector2(3306.82, 3584.85),
    vector2(3306.82, 3890.15),
    vector2(3697.73, 3890.15),
    vector2(3697.73, 3584.85)
}, {
    name = "humanelabs",
})

local wasInside = false

CreateThread(function()
    while true do
        Wait(1000) 
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local playerVec2 = vector2(playerCoords.x, playerCoords.y)

        local isInside = HumaneLabsZone:isPointInside(playerVec2)

        if isInside and not wasInside then
            wasInside = true 
            lib.notify({
                id = 'Astra',
                title = 'HumaneLabs',
                description = 'This zone is Boots On Ground. Weaponised Vehicles, Explosives, Snipers, Flashbangs, or using BulletProof Vehicles as weapons are not permitted.',
                showDuration = true,
                position = 'bottom',
                style = {
                    backgroundColor = '#141517',
                    color = '#C1C2C5',
                    ['.description'] = {
                        color = '#909296'
                    }
                },
                icon = 'warning',
                iconColor = '#C53030'
            })
        elseif not isInside and wasInside then
            wasInside = false 
        end
    end
end)
