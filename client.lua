function fix()
  local ped = PlayerPedId()
  local vehicle = GetVehiclePedIsIn(ped, false)
	if IsPedInAnyVehicle(ped, false) then
		SetVehicleEngineHealth(vehicle, 1000)
		SetVehicleEngineOn( vehicle, true, true )
		SetVehicleFixed(vehicle)
  else
    exports['mythic_notify']:SendAlert('inform', 'Tens de estar dentro de um Veículo!')
  end
end

RegisterNetEvent('mirandex:clientFix')
AddEventHandler('mirandex:clientFix', function()
  fix()
end)
