-- load defaults i.e lua_lsp
require('nvchad.configs.lspconfig').defaults()

-- EXAMPLE
local servers = { 'html', 'cssls', 'ts_ls', 'eslint' }
local nvlsp = require 'nvchad.configs.lspconfig'

vim.lsp.config('*', {
	flags = {
		debounce_text_changes = 150,
	},
})

-- lsps with default config
for _, lsp in ipairs(servers) do
	vim.lsp.config(lsp, {
		on_attach = nvlsp.on_attach,
		on_init = nvlsp.on_init,
		capabilities = nvlsp.capabilities,
	})
	vim.lsp.enable(lsp)
end

vim.lsp.config('gdscript', {
	name = 'godot',
	cmd = { 'ncat', '127.0.0.1', '6005' },
})

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
