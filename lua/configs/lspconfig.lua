-- load defaults i.e lua_lsp
require('nvchad.configs.lspconfig').defaults()

local lspconfig = require 'lspconfig'

-- EXAMPLE
local servers = { 'html', 'cssls', 'ts_ls', 'eslint' }
local nvlsp = require 'nvchad.configs.lspconfig'

-- lsps with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		on_attach = nvlsp.on_attach,
		on_init = nvlsp.on_init,
		capabilities = nvlsp.capabilities,
	}
end

lspconfig.gdscript.setup {
 	name = "godot",
    cmd = {"ncat", "127.0.0.1", "6005"}
}

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
