ESX = exports['es_extended']:getSharedObject()

RegisterCommand('fix', function(source, args)
    local xPlayer = ESX.GetPlayerFromId(source)
    local steamid = GetPlayerIdentifiers(source)[1]
    if xPlayer.getGroup() == 'admin' then
        TriggerClientEvent('mirandex:clientFix', source)
        logs('✩✩✩ Comando Admin ✩✩✩\n[Comando]: /fix \n[Staff]: '..steamid..'', 'YOUR_WEBHOOK_HERE', '#00FF00')
    else
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Não tens permissões', style = { ['background-color'] = '#ff0000', ['color'] = '#fff' } })
    end
end)

function logs (message,webhook)
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = 'Mirandex FixCar Logs', embeds = {{["color"] = corfinal, ["author"] = {["name"] = 'Mirandex FixCar Logs', ["icon_url"] = ''}, ["description"] = message, ["footer"] = {["text"] = "Mirandex FixCar Logs - "..os.date("%x %X %p"),["icon_url"] = "",},}}, avatar_url = ''}), { ['Content-Type'] = 'application/json' })
end
