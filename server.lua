ESX = exports['es_extended']:getSharedObject()

RegisterCommand('fix', function(source, args)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getGroup() == 'admin' then
        TriggerClientEvent('mirandex:clientFix', source)
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Não tens permissões', style = { ['background-color'] = '#ff0000', ['color'] = '#fff' } })
    end
end)
