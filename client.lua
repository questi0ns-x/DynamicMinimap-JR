local isInVehicle = false
 
CreateThread(function()
    DisplayRadar(false)
end)
 
CreateThread(function()
    while true do
        local ped     = PlayerPedId()
        local vehicle = GetVehiclePedIsIn(ped, false)
        local inVeh   = vehicle ~= 0
 
        if inVeh ~= isInVehicle then
            isInVehicle = inVeh
            DisplayRadar(inVeh)  -- true = mostrar, false = ocultar
        end
 
        Wait(250)
    end
end)