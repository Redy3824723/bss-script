local whitelist = loadstring(game:HttpGet("https://raw.githubusercontent.com/Redy3824723/bss-script/main/white%20list.lua", true))()

print(whitelist)
print(game:service('Players').LocalPlayer.UserId)
if whitelist[game:service('Players').LocalPlayer.UserId] then
  print("Добро пожаловать в скрипт для Bee Swarm Simulator!\nDeveloper: Redy (Discord: redy06)")
else
  print("Это приватный скрипт!\nDeveloper: Redy (Discord: redy06))")
  return
end
-- Ссылка на Библиотеку
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
--[[
Список всех тем:
"RJTheme1"
"RJTheme2"
"RJTheme3"
"RJTheme4"
"RJTheme5"
"RJTheme6"
"RJTheme7"
"RJTheme8"
--[[
local colors = {
	-- Цвет фона у Секций
    SchemeColor = Color3.fromRGB(150, 72, 148),
	-- Цвет фона в правой части UI
	Background = Color3.fromRGB(15,15,15),
	-- Цвет фона в левой части UI
    Header = Color3.fromRGB(15,15,15),
	-- Цвет текста
    TextColor = Color3.fromRGB(255,255,255),
	-- Цвет фона у кнопок
    ElementColor = Color3.fromRGB(20, 20, 20)
}
]]
-- Создать окно UI
local Window = Library.CreateLib("Name", "RJTheme3")

-- Секция
local Tab = Window:NewTab("TabName")

-- Подсекция
local Section = Tab:NewSection("Section Name")

-- Заголовок
Section:NewLabel("LabelText")

-- Кнопка
Section:NewButton("ButtonText", "ButtonInfo", function()
    print("Нажатие!")
    print(whitelist)
    print(game:service('Players').LocalPlayer.UserId)
end)

-- Переключатель
Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-- Слайдер
Section:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

-- Текст Бокс
Section:NewTextBox("TextboxText", "TextboxInfo", function(txt)
	print(txt)
end)

-- Бинд на клавиши
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	print("You just clicked the bind")
end)

-- Дропдаун
Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)
