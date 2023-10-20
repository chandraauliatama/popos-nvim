-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- -- get lualine nightfly theme
-- local lualine_nightfly = require("lualine.themes.nightfly")
--
-- -- new colors for theme
-- local new_colors = {
--   blue = "#65D1FF",
--   green = "#3EFFDC",
--   violet = "#FF61EF",
--   yellow = "#FFDA7B",
--   black = "#000000",
-- }
--
-- -- change nightlfy theme colors
-- lualine_nightfly.normal.a.bg = new_colors.blue
-- lualine_nightfly.insert.a.bg = new_colors.green
-- lualine_nightfly.visual.a.bg = new_colors.violet
-- lualine_nightfly.command = {
--   a = {
--     gui = "bold",
--     bg = new_colors.yellow,
--     fg = new_colors.black, -- black
--   },
-- }
--
-- -- configure lualine with modified theme
-- lualine.setup({
--   options = {
--     theme = lualine_nightfly,
--   },
-- })
--

-- stylua: ignore
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#1a1b26',
  white  = '#ffffff',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#24283b',
  insert = '#00FFAB',
  visual = '#FFCA03',
  replace = '#FF008E',
  normal = '#4649FF',
  light = '#888da4'
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.white, bg = colors.normal },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.light, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.insert } },
  visual = { a = { fg = colors.black, bg = colors.visual } },
  replace = { a = { fg = colors.whive, bg = colors.replace } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

local sections = {
  lualine_a = {
    { "mode", separator = { left = "" }, right_padding = 0 },
  },
  lualine_b = {
    {
      "filename",
      shorting_target = 80,
      symbols = {
        modified = " ●", -- Text to show when the buffer is modified
        alternate_file = "#", -- Text to show to identify the alternate file
        directory = "", -- Text to show when the buffer is a directory
      },
    },
    "branch",
  },
  lualine_c = {
    {
      "filename",
      path = 3,
      file_status = false,
    },
  },
  lualine_x = { "fileformat" },
  lualine_y = { "filetype", "encoding" },
  lualine_z = {
    { "location", separator = { right = "" }, left_padding = 2 },
  },
}

lualine.setup({
  options = {
    theme = "tokyonight",
    component_separators = { left = "->", right = "<-" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {
      "NvimTree",
      "Trouble",
    },
  },
  sections = sections,
  inactive_sections = sections,
  tabline = {},
  extensions = {},
})
