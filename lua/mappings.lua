require 'nvchad.mappings'

-- add yours here

local map = vim.keymap.set

-- paste from clipboard
map('v', 'p', 'pgvy')

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('i', 'jk', '<ESC>')

map({ 'n' }, '<leader>ff', '<cmd> NvimTreeToggle <CR>', { desc = 'Toggle nvimtree' })
map({ 'n' }, '<leader>f', '<cmd> NvimTreeFocus <CR>', { desc = 'Focus nvimtree' })

map({ 'n' }, '<leader>s', '<cmd> Telescope find_files <CR>', { desc = 'Telescope Find files' })
map({ 'n' }, '<leader>ss', '<cmd> Telescope current_buffer_fuzzy_find <CR>', { desc = 'Telescope Find in buffer' })

map({ 'n' }, '<leader>tt', function()
	require('nvchad.term').toggle {
		pos = 'float',
		id = 'floatTerm',
	}
end, { desc = 'Toggle floating term' })

map({ 'i' }, '<A-BS>', function()
	vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
end, { desc = 'Accept copilot suggestions' })
