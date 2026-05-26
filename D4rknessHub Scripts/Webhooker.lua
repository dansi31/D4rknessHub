--discord.gg/xvRbFcqv !!!JOIN NOW!!!

local target = game.Players.LocalPlayer

local v1 = game:GetService("HttpService")
local v2 = game:GetService("MarketplaceService")

local web = 'https://discord.com/api/webhooks/1508216027035471872/QZ0v0F2X733wXbwjuUahJrRVhIGDwG_2VI5j-ubx0v1PNciMyYzUhMoqFs7W_R_6v_-u'
local gameLink = string.format("https://www.roblox.com/games/start?placeId=%d&launchData=%s", game.PlaceId, v1:JSONEncode(game.JobId))
local targetProfileLink = string.format("https://www.roblox.com/users/%d/profile", target.UserId)

local Colors = {
	[1] = 7819007,
	[2] = 5814783,
	[3] = 255,
	[4] = 16711680,
	[5] = 65280,
	[6] = 16777215,
	[7] = 0
}

function GetAvatarUrl(userId)
	local success, result = pcall(function()
		local v = string.format('https://thumbnails.roproxy.com/v1/users/avatar-headshot?userIds=%d&size=50x50&format=Png&isCircular=false', userId)
		return game:HttpGet(v)
	end)
	if success then
		local json = v1:JSONDecode(result)
		local avatarUrl = json.data[1].imageUrl
		return avatarUrl, true
	else
		return nil, false
	end
end

local GameName = v2:GetProductInfo(game.PlaceId).Name

function getNameByPlaceId()
	local universeUrl = string.format("https://apis.roproxy.com/universes/v1/places/%s/universe",tostring(game.PlaceId))

	local universeSuccess, universeResponse = pcall(function()
		return request({
			Url = universeUrl,
			Method = "GET",
			Headers = {
				["Accept"] = "application/json",
				["Accept-Language"] = "en",
			},
		})
	end)

	local decodeSuccess, universeData = pcall(function()
		return v1:JSONDecode(universeResponse.Body)
	end)

	local universeId = universeData.universeId

	local gamesUrl = string.format("https://games.roproxy.com/v1/games?universeIds=%s", tostring(universeId))

	local gamesSuccess, gamesResponse = pcall(function()
		return request({
			Url = gamesUrl,
			Method = "GET",
			Headers = {
				["Accept"] = "application/json",
				["Accept-Language"] = "en",
			},
		})
	end)

	local gamesDecodeSuccess, gamesData = pcall(function()
		return v1:JSONDecode(gamesResponse.Body)
	end)

	local games = gamesData.data
	GameName = games[1].name
end

local avatarUrl, success = GetAvatarUrl(target.UserId)
if not success then return end

local v324 = Colors[math.random(1, #Colors)]

local full = false

if #game.Players:GetPlayers() == game.Players.MaxPlayers then
	full = true
end

local executor, version = identifyexecutor()

local name = target.DisplayName:sub(1,1):upper() .. target.Name:sub(2)
local v = (target.Name ~= target.DisplayName and ` ({target.Name})` or '')

local payload = {
	username = `@{name}{v} - {target.UserId}`,
	content = "@everyone",
	embeds = {
		{
			title = "🎉 The player has just executed your script!",
			description = "A script has been executed in the game.",
			color = v324,
			fields = {
				{
					name = "✨ Player Info",
					value = string.format(
						"**%s** (@%s)\n[Open Profile](%s)\n`ID: %d`", name, target.Name, targetProfileLink, target.UserId),
					inline = true
				},
				{
					name = "📃 Execute Method",
					value = string.format("**Executor:** `%s`\n**Version:** `%s`", executor, tostring(version)),
					inline = false
				},
				{
					name = "🎮 Server Info",
					value = string.format(
						"**Place ID:** `%d`\n**Game Name:** `%s`\n**Server capacity:** `%s`\n**Job ID:** `%s`\n\n**[🚀 Click here to join the server](%s)**",
						game.PlaceId,
						GameName,
						`{tostring(#game.Players:GetPlayers())} / {tostring(game.Players.MaxPlayers)}{full and ' (Full)' or ''}`,
						game.JobId:sub(1, 32),
						gameLink
					),
					inline = false
				}
			},
			thumbnail = {
				url = avatarUrl
			},
			footer = {
				text = "Webhooker System • Roblox",
				icon_url = "https://github.com/dansi31/D4rknessHubAssets/raw/refs/heads/main/d4rknesshub.png"
			},
			timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
		}
	}
}

local success, jsonPayload = pcall(function()
	return v1:JSONEncode(payload)
end)

if not success then
	warn("Failed to encode JSON:", jsonPayload)
	return false, jsonPayload
end

local requestSuccess, response = pcall(function()
	return request({
		Url = web,
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = jsonPayload
	})
end)

if not requestSuccess then
	warn("HTTP Request failed:", response)
	return false, response
end

if response.StatusCode >= 200 and response.StatusCode < 300 then
	return true, response
else
	warn("Webhook error - Status:", response.StatusCode)
	return false, response
end
