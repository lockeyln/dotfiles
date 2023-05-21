local wezterm = require("wezterm")
local config = wezterm.config_builder()
local keybindings = require("core.key-bindings")
require("core.right-status").setup()


config = {
    window_decorations = "RESIZE",
    -- color_scheme_dirs = {'~/.config/wezterm/colors/'},
    color_scheme = "Dracula (Official)",

    -- font
    font = wezterm.font_with_fallback({
        "FiraCode Nerd Font Mono",
        { family = "Symbols Nerd Font Mono", scale = 0.75 },
    }),
    font_size = 14,
    adjust_window_size_when_changing_font_size = false,
    use_cap_height_to_scale_fallback_fonts = true,

    background = {
        {
            source = { File = wezterm.config_dir .. "/backdrops/robot.jpg" },
        },
        {
            source = { Color = "#1f1f28" },
            height = "100%",
            width = "100%",
            opacity = 0.90,
        },
    },

    -- keybindings
    disable_default_key_bindings = true,
    keys = keybindings,

    -- mousebindings
    mouse_bindings = {
        -- Ctrl-click will open the link under the mouse cursor
        {
            event = { Up = { streak = 1, button = "Left" } },
            mods = "CTRL",
            action = wezterm.action.OpenLinkAtMouseCursor,
        },
    },

    -- tab bar
    enable_tab_bar = true,
    tab_bar_at_bottom = true,
    hide_tab_bar_if_only_one_tab = true,
    use_fancy_tab_bar = false,
    tab_max_width = 25,
    show_tab_index_in_tab_bar = true,
    switch_to_last_active_tab_when_closing_tab = true,

    -- scroll bar
    enable_scroll_bar = true,
    scrollback_lines = 5000,

    -- status
    status_update_interval = 1000,

    -- window
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },
    window_close_confirmation = "NeverPrompt",
    automatically_reload_config = true,
    inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },
    -- window_background_opacity = 0.9,
    -- macos_window_background_blur = 20,
}

return config
