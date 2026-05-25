--Open sourcee ^^
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local decal

if isfile('TikTok ver. Image') then
	decal = getcustomasset('TikTok ver. Image')
else
	local responce = request({Url = 'https://github.com/dansi31/D4rknessHubAssets/raw/refs/heads/main/iconzz.png', Method = "GET"})
	if responce and responce.Body then
		writefile('TikTok ver. Image', responce.Body)
		decal = getcustomasset('TikTok ver. Image')
	end

end

local Sounds = 0

local Window = Rayfield:CreateWindow({
	Name = "Music Pack by D4rknessHub",
	LoadingTitle = "Music Pack (DARKNESS HUB)",
	LoadingSubtitle = "Music Pack Script, Made by D4rknessHub",
	ConfigurationSaving = { Enabled = false },
	Discord = "",
	KeySystem = false
})

function CreateList(WindowName, id, SectionName)
	local MainTab = Window:CreateTab(WindowName, id)
	local Section = MainTab:CreateSection(SectionName or 'Songz^^')
	return MainTab
end

function CreateSong(SongName, MainTab, sfx)
	Sounds += 1
	local StretchToggle = MainTab:CreateToggle({
		Name = SongName,
		CurrentValue = false,
		Flag = tostring(Sounds),
		Callback = function(Value)
			if Value then
				sfx:Play()
			else
				sfx:Stop()
			end
		end,
	})
end

function create(fileUrl)
    wait()
	local v1 = string.gsub(fileUrl, 'https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/', '')
	local sfxType = v1:sub(1, 9)
	local playedSfx
	local v = false
	if not isfile("Music Pack/".. sfxType) then else
		playedSfx = getcustomasset("Music Pack/".. tostring(sfxType))
		v = true
	end
	local response
	if v == false then
		response = request({Url = fileUrl, Method = "GET"})
	end
	if response and response.Body and v == false then
		if not isfolder("Music Pack") then
			makefolder("Music Pack")
		end
		if not isfile("Music Pack/".. sfxType) then
			writefile("Music Pack/".. sfxType, response.Body)
			playedSfx = getcustomasset("Music Pack/"..sfxType)
		end
	end
	if playedSfx ~= nil then
		local sfx = Instance.new("Sound", game.CoreGui)
		sfx.Name = "Music Asset Sound" .. tostring(Sounds)
		sfx.SoundId = playedSfx
		sfx.Volume = 1.1
		sfx.Looped = false
		return sfx
	end
end

function Tiktokver()
	local Section = CreateList("🕸️ TikTok ver.", decal)
	local sfx = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/dj%20univxrsel%20-%20DROLLXD%20(DE).mp3')
	CreateSong('DJ UNIVXRSEL - drollXD', Section, sfx)
	local sfx2 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/Short_Dick_Man__GargØynes_Remix_.mp3')
	CreateSong('GargØynes Remix - Short Dick Man', Section, sfx2)
    local sfx3 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/tenderlybae_-_Zabirajj_vse_chto_khochesh_65684930.mp3')
	CreateSong('tenderlybae - Забирай всё что хочешь', Section, sfx3)
	local sfx4 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/xantihoney%20dove.mp3')
	CreateSong('antihoney - Dove (Slowed)', Section, sfx4)
	local sfx5 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/Alexandra%20Fever%20—%20Wish%20(slowed)%20(www.lightaudio.ru).mp3')
	CreateSong('Alexandra Fever - Wish (Slowed)', Section, sfx5)
	Section:CreateDivider()
	local sfx7 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/Exvrcist%20—%20Gang%20Bang%20(www.lightaudio.ru).mp3')
	CreateSong('Exvrcist - Gang Bang', Section, sfx7)
	local sfx8 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/SKAI_ISYOURGOD_-_Stacks_from_All_Sides_79433010.mp3')
	CreateSong('攬佬SKAI ISYOURGOD - 八方來財 (Stacks from All Sides)', Section, sfx8)
	local sfx9 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/SKAI_isyourgod_AR_-_Blueprint_Supreme_79311032.mp3')
	CreateSong('攬佬SKAI ISYOURGOD - 大展鸿图 (Blueprint Supreme)', Section, sfx9)
	local sfx10 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/shadowraze_LXNER_quiizzzmeow_-_adaptive_strike_73793462.mp3')
	CreateSong('shadowraze - adaptive strike', Section, sfx10)
	local sfx11 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/SHajjni_-_Vsjo_potomu_chto_bratik_ya_sovratil_ejo_78737269.mp3')
	CreateSong('Шайни - Yeyo!', Section, sfx11)
end

function Jumpstyle()
	local Section = CreateList("Jumpstyle", 9559481784)
	local sfx = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/DJ_ZUP_RAlii_-_Model_Model_slowed_79651597.mp3')
	CreateSong('DJ ZUP RAIii - Модель (Model) - slowed', Section, sfx)
	local sfx2 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/DJ%20ZUP%20RAIii%20—%20в%20коже%20(www%20(mp3cut.net).mp3')
	CreateSong('DJ ZUP RAIii - в коже', Section, sfx2)
	local sfx3 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/AidenMusic.mp3')
	CreateSong('Aiden Music - Jump (Jumpstyle TikTok) (Slowed)', Section, sfx3)
end

function Freestyle()
	local Section = CreateList("☠ Freestyle", 14301710584)
	local sfx = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/so%20so,%20DJ%20Ess%20—%20Tragic%20Freestyle%202%20-%20Slowed%20Down%20(www.lightaudio.ru).mp3')
	CreateSong('so so, DJ Ess - Tragic Freestyle 2 (Slowed Down)', Section, sfx)
	local sfx2 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/PIXY_-_LEGACY_80755504.mp3')
	CreateSong('PIXY - LEGACY', Section, sfx2)
	local sfx3 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/GUTTERBOYSOUZ%20—%20TRENCHBOY%20(bassboosted+effects)%20(www.lightaudio.ru).mp3')
	CreateSong('GUTTERBOYSOUZ - TRENCHBOY', Section, sfx3)
	local sfx4 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/Snow_Strippers_-_Just_Your_Doll_79424541.mp3')
	CreateSong('Snow Strippers - Just Your Doll', Section, sfx4)
	local sfx5 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/Yeat_-_Mony_so_big_73743397.mp3')
	CreateSong('Yeat - Monëy so big', Section, sfx5)
end

function MemeSongs()
	local Section = CreateList("Meme Songs", 7256640162)
	local sfx = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/say-wallahi-bro-song-ywykln.mp3')
	CreateSong('Vault Uploads - say wallahi bro song', Section, sfx)
	local sfx2 = create("https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/Goostavo%20—%20Square%20Dancin'%20In%20Mississippi%20(www.lightaudio.ru).mp3")
	CreateSong("DaDood & Goostavo - Square Dancin' In Mississipi", Section, sfx2)
end

function Hoodmylan()
	local Section = CreateList("Hoodtrap & Mylancore", 12301495776)
	local sfx = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/salad%20fingers.mp3')
	CreateSong('ditto - salad fingers', Section, sfx)
	local sfx2 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/PIXY,%20rxskxlov!%20,%20SG17.06%20—%20legacy%20x%20mylancore%20(www.lightaudio.ru).mp3')
	CreateSong('rxskxlov! & PIXY - LEGACY (mylancore)', Section, sfx2)
	local sfx3 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/SpotiDownloader.com%20-%20No%20Opps%20Out%20(Rio%20x%20RMC)%20-%20Fenzi.mp3')
	CreateSong('Fenzi - No Opps Out (Rio x RMC)', Section, sfx3)
	local sfx4 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/Villains.mp3')
	CreateSong('100 OTD - Villains, pt. 2 Flipp', Section, sfx4)
	local sfx5 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/Foreign-kugakrewceo.mp3')
	CreateSong('kugakrewceo - Foreign', Section, sfx5)
	local sfx6 = create('https://github.com/dansi31/D4rknessHubMusic/raw/refs/heads/main/its-a-dream.mp3')
	CreateSong("Snow Strippers - It's a dream (feat. Lil Uzi Vert)", Section, sfx6)
end

Rayfield:Notify({
	Title = "System",
	Content = "Downloading music... ~ 4 minutes left",
	Image = "arrow-down-to-line",
	Duration = 5
})

Tiktokver()
Freestyle()
Hoodmylan()
MemeSongs()
Jumpstyle()

Rayfield:Notify({
	Title = "System",
	Content = "All sounds loaded!",
	Image = "arrow-down-to-line",
	Duration = 5
})
