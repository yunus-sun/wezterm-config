local wezterm = require('wezterm')
local platform = require('utils.platform')

local font = 'RobotoMono Nerd Font Propo SmBd'
local weight = 'DemiBold'
local font_size = platform().is_mac and 12 or 17

return {
   font = wezterm.font(font, { weight=weight}),
   font_size = font_size,

   --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
