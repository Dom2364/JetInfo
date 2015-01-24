function isInPlane(checkPassenger)
	if LocalPlayer:GetVehicle() ~= nil then
		if LocalPlayer:GetVehicle():GetDriver() ~= LocalPlayer and checkPassenger == true then
			return false
		end
		if LocalPlayer:GetVehicle():GetName() == "Peek Airhawk 225" then
			return true
		end
		if LocalPlayer:GetVehicle():GetName() == "Pell Silverbolt 6" then
			return true
		end
		if LocalPlayer:GetVehicle():GetName() == "Cassius 192" then
			return true
		end
		if LocalPlayer:GetVehicle():GetName() == "Si-47 Leopard" then
			return true
		end
		if LocalPlayer:GetVehicle():GetName() == "G9 Eclipse" then
			return true
		end
		if LocalPlayer:GetVehicle():GetName() == "Aeroliner 474" then
			return true
		end
		if LocalPlayer:GetVehicle():GetName() == "Bering I-86DP" then
			return true
		end
		if LocalPlayer:GetVehicle():GetName() == "F-33 DragonFly" then
			return true
		end
	end
	return false
end

function render()
	if isInPlane(true) then
		Render:DrawText((Render.Size / 2) + Vector2(100, 20), "Altitude: " .. math.floor(LocalPlayer:GetPosition().y) - 200 .. "m", Color(255, 0, 0))
		heading = -math.floor((LocalPlayer:GetVehicle():GetAngle().yaw * 57.14)) + 360
		if heading > 360 then
			heading = heading - 360
		else
			heading = heading
		end
		Render:DrawText((Render.Size / 2) + Vector2(100, 40), "Heading: " .. heading .. "°", Color(255, 0, 0))
	end
end

Events:Subscribe("Render", render)
