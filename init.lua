require("chandraat.plugins-setup")
require("chandraat.core.options")
require("chandraat.core.keymaps")
require("chandraat.core.colorscheme")
require("chandraat.plugins.comment")
require("chandraat.plugins.nvim-tree")
require("chandraat.plugins.lualine")
require("chandraat.plugins.telescope")
require("chandraat.plugins.nvim-cmp")
require("chandraat.plugins.lsp.mason")
require("chandraat.plugins.lsp.lspsaga")
require("chandraat.plugins.lsp.lspconfig")
require("chandraat.plugins.lsp.null-ls")
require("chandraat.plugins.autopairs")
require("chandraat.plugins.treesitter")
require("chandraat.plugins.gitsigns")
require("chandraat.plugins.project")

-- set blade extension to read .blade.php
-- vim.api.nvim_create_autocmd(
--   { "BufRead", "BufNewFile" },
--   { pattern = { "*.blade.php" }, command = "set filetype=blade" }
-- )
