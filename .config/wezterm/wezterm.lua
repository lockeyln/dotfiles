local wezterm = require("wezterm")

function font_with_fallback(name, params)
    local names = { name, "FiraCode Nerd Font Mono" }

    return wezterm.font_with_fallback(names, params)
end

local config = {
    check_for_updates = false,
    -- color_scheme = "Fahrenheit",
    -- color_scheme = "Gruvbox Dark",
    -- color_scheme = "Blue Matrix",
    -- color_scheme = "Pandora",
    -- color_scheme = "Grape",
    -- color_scheme = "Firewatch",
    -- color_scheme = "Duotone Dark",
    -- color_scheme = "Sakura",
    -- color_scheme = "lovelace",
    -- color_scheme = "lovelace",
    color_scheme = "Whimsy",

    enable_scroll_bar = true,
    exit_behavior = "Close",

    -- tab_bar_at_bottom = true,
    inactive_pane_hsb = {
        hue = 1.0,
        saturation = 1.0,
        brightness = 1.0,
    },

    font = font_with_fallback("JetBrains Mono"),
    font_antialias = "Subpixel",
    font_dirs = { "fonts" },
    font_rules = {
        {
            intensity = "Bold",
            font = font_with_fallback("JetBrains Mono Bold"),
        },
    },
    font_size = 13.0,

    -- Tab bar appearance
    colors = {
        tab_bar = {

            -- The color of the strip that goes along the top of the window
            background = "#282828",

            -- The active tab is the one that has focus in the window
            active_tab = {
                -- The color of the background area for the tab
                bg_color = "#18131e",
                -- The color of the text for the tab
                fg_color = "#ff65fd",

                intensity = "Normal",
                underline = "None",
                italic = false,
                strikethrough = false,
            },

            -- Inactive tabs are the tabs that do not have focus
            inactive_tab = {
                bg_color = "#282828",
                fg_color = "#d19afc",
            },
            inactive_tab_hover = {
                bg_color = "#202020",
                fg_color = "#ff65fd",
            },

            new_tab = {
                bg_color = "#282828",
                fg_color = "#d19afc",
            },
            new_tab_hover = {
                bg_color = "#18131e",
                fg_color = "#ff65fd",
            },
        },
    },

    keys = {
        {
            key = "Insert",
            mods = "SHIFT",
            action = "Paste",
        },
        {
            key = "c",
            mods = "CTRL | SHIFT",
            action = "Copy",
        },
        {
            key = "v",
            mods = "CTRL | SHIFT",
            action = "Paste",
        },
        {
            key = "x",
            mods = "CTRL | SHIFT",
            action = "ActivateCopyMode",
        },
        {
            key = "z",
            mods = "CTRL | SHIFT",
            action = wezterm.action({ EmitEvent = "plumb" }),
        },
        {
            key = "PageUp",
            mods = "SHIFT",
            action = wezterm.action({ ScrollByPage = -1 }),
        },
        {
            key = "PageDown",
            mods = "SHIFT",
            action = wezterm.action({ ScrollByPage = 1 }),
        },
        {
            key = "+",
            mods = "CTRL | SHIFT",
            action = "IncreaseFontSize",
        },
        {
            key = "-",
            mods = "CTRL | SHIFT",
            action = "DecreaseFontSize",
        },
        {
            key = "t",
            mods = "CTRL | SHIFT",
            action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }),
        },
        {
            key = "w",
            mods = "CTRL | SHIFT",
            action = wezterm.action({ CloseCurrentTab = { confirm = true } }),
        },
        {
            key = "LeftArrow",
            mods = "CTRL | SHIFT",
            action = wezterm.action({ ActivateTabRelative = -1 }),
        },
        {
            key = "RightArrow",
            mods = "CTRL | SHIFT",
            action = wezterm.action({ ActivateTabRelative = 1 }),
        },
        {
            key = "PageUp",
            mods = "CTRL | SHIFT",
            action = wezterm.action({ MoveTabRelative = -1 }),
        },
        {
            key = "PageDown",
            mods = "CTRL | SHIFT",
            action = wezterm.action({ MoveTabRelative = 1 }),
        },
    },
    mouse_bindings = {
        {
            event = {
                Down = {
                    streak = 1,
                    button = "Left",
                },
            },
            mods = "NONE",
            action = wezterm.action({ SelectTextAtMouseCursor = "Cell" }),
        },
        {
            event = {
                Down = {
                    streak = 2,
                    button = "Left",
                },
            },
            mods = "NONE",
            action = wezterm.action({ SelectTextAtMouseCursor = "Word" }),
        },
        {
            event = {
                Down = {
                    streak = 3,
                    button = "Left",
                },
            },
            mods = "NONE",
            action = wezterm.action({ SelectTextAtMouseCursor = "Line" }),
        },
        {
            event = {
                Up = {
                    streak = 1,
                    button = "Left",
                },
            },
            mods = "NONE",
            action = wezterm.action({ CompleteSelectionOrOpenLinkAtMouseCursor = "PrimarySelection" }),
        },
        {
            event = {
                Down = {
                    streak = 1,
                    button = "Middle",
                },
            },
            mods = "NONE",
            action = "Paste",
        },
    },
}

return config
