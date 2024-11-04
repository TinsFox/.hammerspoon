-- 当选中某窗口按下 ctrl+command+. 时会显示应用的路径、名字等信息
hs.hotkey.bind(
    {"ctrl", "cmd"},
    ".",
    function()
        hs.pasteboard.setContents(hs.window.focusedWindow():application():path())
        print("App path: " .. hs.window.focusedWindow():application():path() .. "\n")
        hs.alert.show(
            "App path: " ..
                hs.window.focusedWindow():application():path() ..
                    "\n" ..
                        "App name: " ..
                            hs.window.focusedWindow():application():name() ..
                                "\n" .. "IM source id:  " .. hs.keycodes.currentSourceID(),
            hs.alert.defaultStyle,
            hs.screen.mainScreen(),
            3
        )
    end
)
