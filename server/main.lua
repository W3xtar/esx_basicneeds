CreateThread(function()
	for k,v in pairs(Config.Items) do
		ESX.RegisterUsableItem(k, function(source)
			local xPlayer = ESX.GetPlayerFromId(source)
			if v.remove then
				xPlayer.removeInventoryItem(k,1)
			end
			if v.type == "food" then
				TriggerClientEvent("esx_status:add", source, "hunger", v.status)
				TriggerClientEvent('esx_basicneeds:onUse', source, v.type, v.prop, v.anim)
				xPlayer.showNotification(TranslateCap('used_food', ESX.GetItemLabel(k)))
			elseif v.type == "drink" then
				TriggerClientEvent("esx_status:add", source, "thirst", v.status)
				TriggerClientEvent('esx_basicneeds:onUse', source, v.type, v.prop, v.anim)
				xPlayer.showNotification(TranslateCap('used_drink', ESX.GetItemLabel(k)))
			else
				print(string.format('^1[ERROR]^0 %s has no correct type defined.', k))
			end
		end)
	end 
end)

ESX.RegisterCommand('heal', 'admin', function(xPlayer, args, showError)
	args.playerId.triggerEvent('esx_basicneeds:healPlayer')
	args.playerId.showNotification(TranslateCap('got_healed'))
end, true, {help = 'Heal a player, or yourself - restores thirst, hunger and health.', validate = true, arguments = {
	{name = 'playerId', help = 'the player id', type = 'player'}
}})

AddEventHandler('txAdmin:events:healedPlayer', function(eventData)
	if GetInvokingResource() ~= "monitor" or type(eventData) ~= "table" or type(eventData.id) ~= "number" then
		return
	end

	TriggerClientEvent('esx_basicneeds:healPlayer', eventData.id)
end)
-- Essen
ESX.RegisterUsableItem('bread', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_cs_burger_01', 'bread', 'hunger', 200000, 'กิน <strong class="green-text">ขนมปัง</strong> 1 ชิ้น')
end)

ESX.RegisterUsableItem('burger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_cs_burger_01', 'burger', 'hunger', 500000, 'กิน <strong class="green-text">เบอเกอร์เนื้อดับเบิ้ลชีส</strong> 1 ชิ้น')
end)

ESX.RegisterUsableItem('hotdog', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_cs_hotdog_01', 'hotdog', 'hunger', 300000, 'กิน <strong class="green-text">ฮอทดอก</strong> 1 ชิ้น')
end)

ESX.RegisterUsableItem('taco', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_taco_01', 'taco', 'hunger', 300000, 'กิน <strong class="green-text">ทาโก้</strong> 1 ชิ้น')
end)

ESX.RegisterUsableItem('sandwich', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_sandwich_01', 'sandwich', 'hunger', 250000, 'กิน <strong class="green-text">แซนวิสปลา</strong> 1 ชิ้น')
end)

ESX.RegisterUsableItem('donut1', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_donut_01', 'donut1', 'hunger', 200000, 'กิน <strong class="brown-text">โดนัท</strong> 1 ชิ้น')
end)

ESX.RegisterUsableItem('donut2', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_donut_02', 'donut2', 'hunger', 200000, 'กิน <strong class="brown-text">โดนัท ช็อกโกแลต</strong> 1 ชิ้น')
end)

ESX.RegisterUsableItem('pie', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('esx_basicneeds:onEat', source, 'prop_food_bs_chips', 'pie', 'hunger', 350000, 'กิน <strong class="green-text">พายไก่</strong> 1 ชิ้น')
end)


--Trinken
ESX.RegisterUsableItem('beer', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('beer', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 250000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_beer'))

end)
ESX.RegisterUsableItem('wine', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('wine', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 250000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_wine'))

end)
ESX.RegisterUsableItem('vodka', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('vodka', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 250000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_vodka'))

end)
ESX.RegisterUsableItem('tequila', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('tequila', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 250000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))

end)

ESX.RegisterUsableItem('whisky', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('whisky', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 250000)
	TriggerClientEvent('esx_optionalneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_whisky'))

end)
