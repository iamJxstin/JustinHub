--Revamped

----- GUI, DISCORD, KEY SYSTEM -----
getgenv().Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()
getgenv().Window = Rayfield:CreateWindow({
	Name = "JustinHub",
	LoadingTitle = "JustinHub Interface",
	LoadingSubtitle = "Loading...",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = JustinHub, -- Create a custom folder for your hub/game
		FileName = "JustinHub"
	},
	Discord = {
		Enabled = true,
		Invite = "MPGb58u4zH",
		RememberJoins = true
	},
	KeySystem = true,
	KeySettings = {
		Title = "JustinHub",
		Subtitle = "Key System",
		Note = "Key: SesameStreet123",
		FileName = "JustinHub Key",
		SaveKey = true,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "SesameStreet123"
	}
})
-----------------------------------------------------------------------------------------------------------------------------
local start_time = tick()

loadstring(game:HttpGet('https://raw.githubusercontent.com/iamJxstin/JustinHUB/main/Cheats.lua'))()

local A = loadstring(game:HttpGet('https://raw.githubusercontent.com/iamJxstin/JustinHUB/main/SupportedGames.lua'))()

-- Returns all the services being used by the game (originally called by Cheats loadstring)
getgenv().Get =
	setmetatable(
		{},
		{
			__index = function(A, B)
				return game:GetService(B)
			end
		}
	)

-- Re-Executes the main loadstring if the script was already executed and the user rejoins or joins a new PlaceId of current GameId
local queue_on_teleport =
	queue_on_teleport or
	syn and
	syn.queue_on_teleport [[
       if not game:IsLoaded() then game.Loaded:Wait() end print("Re-Executed")
       loadstring(game:HttpGet('insert loadstring that redirects to JustinHub'))()]] -- EDIT LATER --

-- Checks the loadstring for SupportedGames and determines if the current GameId is in it
for i, v in pairs(SupportedGames) do
	if i == game.GameId then
		loadstring(game:HttpGet(v))()
	else
		loadstring(game:HttpGet('https://raw.githubusercontent.com/iamJxstin/JustinHUB/main/Univsersal.lua'))()
	end
end

local end_time = tick()
print("JustinHub Loaded In ", (start_time - end_time), " Seconds")