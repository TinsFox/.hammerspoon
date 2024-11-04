require "config"
require "modules.reload"
require "modules.defaultInput"
require "modules.app-name"

hs.hotkey.bind({}, "F15", function()
    local app = hs.application.get("kitty")

    if app then
        if not app:mainWindow() then
            app:selectMenuItem({"kitty", "New OS window"})
        elseif app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("kitty")
        app = hs.application.get("kitty")
    end
    app:mainWindow():moveToUnit '[100,100,0,0]'
end)

hs.hotkey.bind({"Option"}, "C", function()
    local app = hs.application.get("Visual Studio Code")

    if app then
        if app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("Visual Studio Code")
        app = hs.application.get("Visual Studio Code")
    end
end)

hs.hotkey.bind({"Option"}, "W", function()
    local app = hs.application.get("WeChat")

    if app then
        if app:isFrontmost() then
            app:hide()
        else
            app:activate()
        end
    else
        hs.application.launchOrFocus("WeChat")
        app = hs.application.get("WeChat")
    end
end)

