local rm = vim.keymap.set -- just some variables to make the typing a bit less local vim.o = vim.o


-- Ctrl S for saving and going to normal mode
rm('n', "<C-s>", "<Cmd>w!<CR>")
rm('i', "<C-s>", "<Cmd>w!|stopinsert<CR>")

-- Center after jumping half pages
rm('n', '<C-u>', '<C-u>zz')
rm('n', '<C-d>', '<C-d>zz')


-- Flutter
rm('n', '<leader>fs', '<Cmd>FlutterRun<CR>', { desc = "[F]lutter [S]tart" })           -- [f]lutter [s]tart
rm('n', '<leader>fr', '<Cmd>FlutterReload<CR>', { desc = "[F]lutter [R]eload" })       -- [f]lutter [r]eload
rm('n', '<leader>fR', '<Cmd>FlutterRestart<CR>', { desc = "[F]lutter [R]estart" })     -- [f]lutter [R]restart
rm('n', '<leader>fe', '<Cmd>FlutterEmulators<CR>', { desc = "[F]lutter [E]mulators" }) -- [f]lutter [e]emulators
rm('n', '<leader>fq', '<Cmd>FlutterQuit<CR>', { desc = "[F]lutter [Q]uit" })           -- [f]lutter [q]uit

-- Undo Tree
rm('n', '<F5>', '<Cmd>UndotreeToggle<CR>')
rm('n', '<leader>ut', '<Cmd>UndotreeToggle<CR>')

-- LSP
rm('n', 'gD', vim.lsp.buf.declaration)
rm('n', 'gd', vim.lsp.buf.definition)
rm('n', 'gi', vim.lsp.buf.implementation)
rm('n', '<C-k>', vim.lsp.buf.signature_help)

rm('n', '<leader>th', '<CMD>Themery<CR>')

rm('n', '<leader>.', vim.lsp.buf.code_action, { desc = "Code Action" })

-- Renamer
-- vim.api.nvim_set_keymap('i', '<F2>', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true }) -- not doing anything
rm('n', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
rm('v', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })

--LSP
rm("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
rm('n', '<leader>gd', vim.lsp.buf.definition, { desc = "[G]oto [D]efinition" })
rm('n', '<leader>ga', vim.lsp.buf.code_action, { desc = "[G]oto [A]ction" })

-- diagnostics
rm('n', '<leader>sd', "<Cmd>Telescope diagnostics severity_bound=ERROR <CR>", { desc = '[S]earch [D]iagnostics' })
rm('n', '<leader>sdd', vim.diagnostic.setloclist, { desc = "[S]earch [D]iagnostics" })

-- was  not using following 2:
-- rm('n', '<leader>sd', "<Cmd>Telescope diagnostics <CR>", { desc = '[S]earch [D]iagnostics' })
-- rm('n', '<leader>sd', "<Cmd>Telescope diagnostics severity_bound=ERROR <CR>", { desc = '[S]earch [D]iagnostics' })


-- Telescope
rm('n', '<leader>gr', '<CMD>Telescope lsp_references<CR>', { desc = "[G]oto [R]eferences" })

-- Tmux Vim Navigator
-- rm('n', '<C-h>', '<Cmd>NvimTmuxNavigateLeft<CR>')
-- rm('n', '<C-j>', '<Cmd>NvimTmuxNavigateDown<CR>')
-- rm('n', '<C-k>', '<Cmd>NvimTmuxNavigateUp<CR>')
-- rm('n', '<C-l>', '<Cmd>NvimTmuxNavigateRight<CR>')
-- /jacob added



-- Search centering
rm('n', 'n', 'nzz')
rm('n', 'N', 'Nzz')

-- Deleting letters going to vim.oid
rm('n', 'x', '"_x')
rm('v', 'x', '"_x')

-- format pasted line.
rm('n', 'p', 'p==')

-- vertical split
rm('n', '<leader>sv', '<Cmd>vsplit<CR>')

-- horizontal split
rm('n', '<leader>sh', '<Cmd>split<CR>')

-- Move in splits with hjkl
rm('n', '<leader>h', '<Cmd>wincmd h<CR>')
rm('n', '<leader>j', '<Cmd>wincmd j<CR>')
rm('n', '<leader>k', '<Cmd>wincmd k<CR>')
rm('n', '<leader>l', '<Cmd>wincmd l<CR>')
rm('t', '<leader>h', '<Cmd>wincmd h<CR>')
rm('t', '<leader>j', '<Cmd>wincmd j<CR>')
rm('t', '<leader>k', '<Cmd>wincmd k<CR>')
rm('t', '<leader>l', '<Cmd>wincmd l<CR>')

-- Resize splits
rm('n', '<S-Left>', '<Cmd>vertical resize -2<CR>')
rm('n', '<S-Right>', '<Cmd>vertical resize +2<CR>')
rm('n', '<S-Up>', '<Cmd>resize -2<CR>')
rm('n', '<S-Down>', '<Cmd>resize +2<CR>')

-- Indent/Unindent selected text with Tab and Shift+Tab
rm('v', '>', '>gv')
rm('v', '<', '<gv')

-- Remove search HL
rm('n', '<leader>rs', '<Cmd>nohlsearch<CR>', { desc = '[R]emove [S]earch' })
