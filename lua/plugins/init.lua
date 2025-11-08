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
		opts = {
			view = {
				side = 'left',
				width = 50,
			},
		},
	},

	{
		'nvim-treesitter/nvim-treesitter',
		opts = {
			ensure_installed = {
				'vim',
				'lua',
				'vimdoc',
				'html',
				'css',
				'gdscript',
				'godot_resource',
				'gdshader',
			},
			auto_install = true,
			prefer_git = true,
			highlight = { enable = true },
			indent = { enable = true },
		},
	},
}
