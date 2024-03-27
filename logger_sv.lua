local logs = "https://discord.com/api/webhooks/1222507893228699670/EfuNu_KS850Ak_sPfuIoXle-ZPsaYrd4_sEB4E8c4a9aEQIQ8aJiO8HvZWtrWgWhpFVV"
local communityname = "Big Yoda"
local communtiylogo = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.etsy.com%2Fin-en%2Flisting%2F573644286%2Ftic-tac-toe-game-sheet-digital-print&psig=AOvVaw1pXcEULbkVR1TG227jk2zk&ust=1711627687216000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIiv2pO0lIUDFQAAAAAdAAAAABAE" --Must end with .png or .jpg

AddEventHandler('playerConnecting', function()
local name = akunbotnub(source)
local ip = (source)
local ping = GetPlayerPing(source)
local steamhex = GetPlayerIdentifier(source)
local connect = {
        {
            ["color"] = "8663711",
            ["title"] = "Player Connected to Server #1",
            ["description"] = "Player: **"..name.."**\nIP: **"..ip.."**\n Steam Hex: **"..steamhex.."**",
	        ["footer"] = {
                ["text"] = communityname,
                ["icon_url"] = communtiylogo,
            },
        }
    }

PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "Big Yoda Server Logger", embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler('playerDropped', function(reason)
local name = GetPlayerName(source)
local ip = GetPlayerEndpoint(source)
local ping = GetPlayerPing(source)
local steamhex = GetPlayerIdentifier(source)
local disconnect = {
        {
            ["color"] = "8663711",
            ["title"] = "Player Disconnected from Server #1",
            ["description"] = "Player: **"..name.."** \nReason: **"..reason.."**\nIP: **"..ip.."**\n Steam Hex: **"..steamhex.."**",
	        ["footer"] = {
                ["text"] = communityname,
                ["icon_url"] = communtiylogo,
            },
        }
    }

    PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "Big Yoda Server Logger", embeds = disconnect}), { ['Content-Type'] = 'application/json' })
end)
