local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

local is_key_present = isfile("AzulHubKey.txt");
if is_key_present == true then
    local kery = readfile("AzulHubKey.txt");
    local onl_key = game:HttpGet("https://1.kelprepl.repl.co/verify/Azul?verify_key=" .. kery)
    if kery == onl_key then
        print("Executed script!");
        lib:MakeNotification({
            Name = "Successful!",
            Content = "Key Correct, Load script",
            Time = 5
        })
-- full script here:)
    end
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HoyoGey/CoconutHub/main/Main.lua"))()
    --wrong key
    lib:MakeNotification({
        Name = "Warning!",
        Content = "Wrong Key Pls Try Again",
        Image = "rbxassetid://10894994115",
        Time = 5
    })
end
