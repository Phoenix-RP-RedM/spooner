RegisterNetEvent('spooner:init')
RegisterNetEvent('spooner:toggle')
RegisterNetEvent('spooner:openDatabaseMenu')
RegisterNetEvent('spooner:openSaveDbMenu')

AddEventHandler('spooner:init', function()
	local permissions = {}

	if IsPlayerAceAllowed(source, 'spooner.noEntityLimit') then
		permissions.maxEntities = nil
	else
		permissions.maxEntities = Config.MaxEntities
	end

	permissions.spawn = {}
	permissions.spawn.ped = IsPlayerAceAllowed(source, 'spooner.spawn.ped')
	permissions.spawn.vehicle = IsPlayerAceAllowed(source, 'spooner.spawn.vehicle')
	permissions.spawn.object = IsPlayerAceAllowed(source, 'spooner.spawn.object')
	permissions.spawn.propset = IsPlayerAceAllowed(source, 'spooner.spawn.propset')
	permissions.spawn.pickup = IsPlayerAceAllowed(source, 'spooner.spawn.pickup')

	permissions.deleteOwn = IsPlayerAceAllowed(source, 'spooner.delete.own')
	permissions.deleteOther = IsPlayerAceAllowed(source, 'spooner.delete.other')

	permissions.modifyOwn = IsPlayerAceAllowed(source, 'spooner.modify.own')
	permissions.modifyOther = IsPlayerAceAllowed(source, 'spooner.modify.other')

	permissions.properties = {}
	permissions.properties.freeze = IsPlayerAceAllowed(source, 'spooner.properties.freeze')
	permissions.properties.position = IsPlayerAceAllowed(source, 'spooner.properties.position')
	permissions.properties.rotation = IsPlayerAceAllowed(source, 'spooner.properties.rotation')
	permissions.properties.goTo = IsPlayerAceAllowed(source, 'spooner.properties.goTo')
	permissions.properties.health = IsPlayerAceAllowed(source, 'spooner.properties.health')
	permissions.properties.invincible = IsPlayerAceAllowed(source, 'spooner.properties.invincible')
	permissions.properties.visible = IsPlayerAceAllowed(source, 'spooner.properties.visible')
	permissions.properties.gravity = IsPlayerAceAllowed(source, 'spooner.properties.gravity')
	permissions.properties.collision = IsPlayerAceAllowed(source, 'spooner.properties.collision')
	permissions.properties.attachments = IsPlayerAceAllowed(source, 'spooner.properties.attachments')

	permissions.properties.ped = {}
	permissions.properties.ped.changeModel = IsPlayerAceAllowed(source, 'spooner.properties.ped.changeModel')
	permissions.properties.ped.outfit = IsPlayerAceAllowed(source, 'spooner.properties.ped.oufit')
	permissions.properties.ped.group = IsPlayerAceAllowed(source, 'spooner.properties.ped.group')
	permissions.properties.ped.scenario = IsPlayerAceAllowed(source, 'spooner.properties.ped.scenario')
	permissions.properties.ped.animation = IsPlayerAceAllowed(source, 'spooner.properties.ped.animation')
	permissions.properties.ped.clearTasks = IsPlayerAceAllowed(source, 'spooner.properties.ped.clearTasks')
	permissions.properties.ped.weapon = IsPlayerAceAllowed(source, 'spooner.properties.ped.weapon')
	permissions.properties.ped.mount = IsPlayerAceAllowed(source, 'spooner.properties.ped.mount')
	permissions.properties.ped.resurrect = IsPlayerAceAllowed(source, 'spooner.properties.ped.resurrect')
	permissions.properties.ped.ai = IsPlayerAceAllowed(source, 'spooner.properties.ped.ai')

	permissions.properties.vehicle = {}
	permissions.properties.vehicle.repair = IsPlayerAceAllowed(source, 'spooner.properties.vehicle.repair')
	permissions.properties.vehicle.getin = IsPlayerAceAllowed(source, 'spooner.properties.vehicle.getin')
	permissions.properties.vehicle.engine = IsPlayerAceAllowed(source, 'spooner.properties.vehicle.engine')
	permissions.properties.vehicle.lights = IsPlayerAceAllowed(source, 'spooiner.properties.vehicle.lights')

	TriggerClientEvent('spooner:init', source, permissions)
end)

AddEventHandler('spooner:toggle', function()
	if IsPlayerAceAllowed(source, 'spooner.view') then
		TriggerClientEvent('spooner:toggle', source)
	end
end)

AddEventHandler('spooner:openDatabaseMenu', function()
	if IsPlayerAceAllowed(source, 'spooner.view') then
		TriggerClientEvent('spooner:openDatabaseMenu', source)
	end
end)

AddEventHandler('spooner:openSaveDbMenu', function()
	if IsPlayerAceAllowed(source, 'spooner.view') then
		TriggerClientEvent('spooner:openSaveDbMenu', source)
	end
end)

RegisterCommand('spooner_refresh_perms', function(source, args, raw)
	TriggerClientEvent('spooner:refreshPermissions', -1)
end, true)
