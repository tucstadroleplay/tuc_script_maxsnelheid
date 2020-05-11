-- Development for Tucstad Roleplay
-- Author: Jesse

local ped = GetPlayerPed()
local maxspeeds = {
	{class = 0, speed = 320},
	{class = 1, speed = 320},
	{class = 2, speed = 320},
	{class = 3, speed = 320},
	{class = 4, speed = 320},
	{class = 5, speed = 320},
	{class = 6, speed = 320},
	{class = 7, speed = 320},
	{class = 8, speed = 320},
	{class = 9, speed = 320},
	{class = 10, speed = 320},
	{class = 11, speed = 320},
	{class = 12, speed = 320},
	{class = 13, speed = 320},
	{class = 14, speed = 320},
	{class = 15, speed = 320},
	{class = 16, speed = 320},
	{class = 17, speed = 320},
	{class = 18, speed = 320},
	{class = 19, speed = 320},
	{class = 20, speed = 320}
}

Citizen.CreateThread(function()
	while true do
		if IsPedInAnyVehicle(ped, false) then
				local veh = GetVehiclePedIsUsing(ped)
				local speed = GetEntitySpeed(veh)
				local mph = (speed * 2.236936)
				if GetPedInVehicleSeat(veh, -1) == ped then   
					for a=1, #maxspeeds do
						if maxspeeds[a].class == GetVehicleClass(veh) then
							if speed > maxspeeds[a].speed  then
								SetVehicleEngineHealth( veh, (GetVehicleEngineHealth(veh) - 100))
							end
						end
					end
				end
		end
	end
end)
