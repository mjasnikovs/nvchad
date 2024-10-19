return {
	{
		'stevearc/conform.nvim',
		event = 'BufWritePre', -- uncomment for format on save
		opts = require 'configs.conform',
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		'neovim/nvim-lspconfig',
		config = function()
			require 'configs.lspconfig'
		end,
	},
	{
		'github/copilot.vim',
		lazy = false,
		config = function() -- Mapping tab is already used by NvChad
			vim.g.copilot_no_tab_map = true
			vim.g.copilot_assume_mapped = true
			vim.g.copilot_tab_fallback = ''
		end,
	},
	{
		'nvim-tree/nvim-tree.lua',
		opts = function()
			vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
			vim.g.nvim_tree_width = 60
			vim.g.nvim_tree_quit_on_open = 1
		end,
	},

	-- {
	-- 	"nvim-treesitter/nvim-treesitter",
	-- 	opts = {
	-- 		ensure_installed = {
	-- 			"vim", "lua", "vimdoc",
	--      "html", "css"
	-- 		},
	-- 	},
	-- },
}
