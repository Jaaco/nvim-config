vim.cmd('colorscheme habamax')
-- Error theme:
--0=========================================================================0
-- █▀ █▀▀ ▀█▀ ▀█▀ █ █▄░█ █▀▀ █▀
-- ▄█ ██▄ ░█░ ░█░ █ █░▀█ █▄█ ▄█
--0=========================================================================0
vim.g.mapleader = ' '     -- setting the leader key
local rm = vim.keymap.set -- just some variables to make the typing a bit less local vim.o = vim.o
-- terminal tab filename title
vim.opt.title = true
vim.opt.titlestring = '%t'

vim.opt.autoindent = true
vim.opt.swapfile = false
vim.o.number = true

-- jacob added
vim.opt.relativenumber = true

-- indent lines
vim.o.list = true
vim.opt.listchars = { tab = "   ", leadmultispace = '│   ' }

vim.o.cursorline = true
vim.o.expandtab = true
vim.o.lazyredraw = true
vim.o.mouse = 'a'
vim.o.ruler = true
vim.o.showcmd = true
vim.o.syntax = 'enable'
vim.o.timeoutlen = 300
vim.o.wildmenu = true
vim.o.wrap = false
vim.o.completeopt = 'menuone,preview,noselect'

-- Faster update time
vim.o.updatetime = 50

-- format
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.smarttab = true
vim.o.tabstop = 2

vim.opt.termguicolors = true
vim.o.clipboard = 'unnamedplus'
vim.o.encoding = 'utf-8'
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.showmatch = true
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.scrolloff = 5
vim.o.signcolumn = 'yes'

--0=========================================================================0
-- █▀█ █▀▀ █▀▄▀█ ▄▀█ █▀█ █▀
-- █▀▄ ██▄ █░▀░█ █▀█ █▀▀ ▄█
--0=========================================================================0


-- jacob added
rm('n', "<C-s>", "<Cmd>w!<CR>")
rm('i', "<C-s>", "<Cmd>w!|stopinsert<CR>")
rm('n', '<leader>fs', '<Cmd>FlutterRun<CR>')       -- [f]lutter [s]tart
rm('n', '<leader>fr', '<Cmd>FlutterReload<CR>')    -- [f]lutter [r]eload
rm('n', '<leader>fR', '<Cmd>FlutterRestart<CR>')   -- [f]lutter [R]restart
rm('n', '<leader>fe', '<Cmd>FlutterEmulators<CR>') -- [f]lutter [e]emulators
rm('n', '<leader>fq', '<Cmd>FlutterQuit<CR>')      -- [f]lutter [q]uit

-- QOL:
-- Search centering
rm('n', 'n', 'nzz')
rm('n', 'N', 'Nzz')
-- Deleting letters going to vim.oid
rm('n', 'x', '"_x')
rm('v', 'x', '"_x')
-- format pasted line.
rm('n', 'p', 'p==')

-- page movement up/down
rm('n', '<C-k>', '<S-Up>zz')
rm('n', '<C-j>', '<S-Down>zz')
rm('v', '<C-k>', '<S-Up>zz')
rm('v', '<C-j>', '<S-Down>zz')
-- Save file
-- rm('n', '<C-s>', ':w<CR>')
--
-- Move selected lines with alt arrows like in subl
rm('v', '<A-k>', ":m '<-2<CR>gv=gv")
rm('v', '<A-j>', ":m '>+1<CR>gv=gv")
rm('n', '<A-k>', ':m .-2<cr>==')
rm('n', '<A-j>', ':m .+1<cr>==')
-- vertical split
rm('n', '<leader>+', '<Cmd>vsplit<CR>')
-- horizontal split
rm('n', '<leader>-', '<Cmd>split<CR>')
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
rm('n', '<leader>h', '<Cmd>nohlsearch<CR>')
--0=========================================================================0
-- █░░ ▄▀█ ▀█ █▄█
-- █▄▄ █▀█ █▄ ░█░
--0=========================================================================0
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim' -- Lazy bootstrap starts here
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath) -- Ends here, this should be left alone.
--0=========================================================================0
-- █▀█ █░░ █░█ █▀▀ █ █▄░█ █▀   █▀ ▀█▀ ▄▀█ █▀█ ▀█▀   █░█ █▀▀ █▀█ █▀▀
-- █▀▀ █▄▄ █▄█ █▄█ █ █░▀█ ▄█   ▄█ ░█░ █▀█ █▀▄ ░█░   █▀█ ██▄ █▀▄ ██▄
--0=========================================================================0
require("lazy").setup({
  --{
  --    "leet0rz/modified-moonlight.nvim", -- this is the theme
  --    config = function()
  --        vim.cmd("colorscheme moonlight") -- this applies the theme
  --    end
  --},
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end
  },
  {
    'terrortylor/nvim-comment',
    config = function()
      -- remaps
      rm('n', "'", ':CommentToggle<CR>')
      rm('v', "'", ':CommentToggle<CR>')
      require('nvim_comment').setup()
    end

  },
  --0=============================================================================================0
  -- ▀█▀ █▀▀ █░░ █▀▀ █▀ █▀▀ █▀█ █▀█ █▀▀
  -- ░█░ ██▄ █▄▄ ██▄ ▄█ █▄▄ █▄█ █▀▀ ██▄
  --0=============================================================================================0
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      -- remaps
      local builtin = require('telescope.builtin')
      rm('n', '<leader>ff', builtin.find_files)
      rm('n', '<leader>fg', builtin.live_grep)
      rm('n', '<leader>fb', builtin.buffers)
      rm('n', '<leader>fh', builtin.help_tags)
      -- telescope's setup
      require('telescope').setup {
        defaults = {
          sorting_strategy = 'ascending',
          layout_strategy = 'horizontal',
          layout_config = {
            horizontal = {
              prompt_position = 'top',
              preview_width = 0.5,
              results_width = 0.5,
              height = 0.5,
              preview_cutoff = 120,
            }
          },
        },
      }
    end
  },
  --0=============================================================================================0
  -- █▀█ █ █░░
  -- █▄█ █ █▄▄
  --0=============================================================================================0
  {
    'stevearc/oil.nvim',
    config = function()
      -- remaps
      rm('n', '<leader>o', ':Oil<CR>')
      require('oil').setup({
        default_file_explorer = true,
        keymaps = {
          ['<C-s>'] = ':w<CR>',
        },
        view_options = { show_hidden = true },
      })
    end
  },
  --0=============================================================================================0
  -- ▀█▀ █▀█ █▀▀ █▀▀ █▀ █ ▀█▀ ▀█▀ █▀▀ █▀█
  -- ░█░ █▀▄ ██▄ ██▄ ▄█ █ ░█░ ░█░ ██▄ █▀▄
  --0=============================================================================================0
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
      -- ENABLES THIS IF USING WINDOWS:
      -- require('nvim-treesitter.install').compilers = { 'zig' }
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query' },
        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,
        -- Automatically install missing parsers when entering buffer
        auto_install = false,
        highlight = {
          enable = true,
        },
      }
    end
  },
  --0=============================================================================================0
  -- █░░ █░█ ▄▀█ █░░ █ █▄░█ █▀▀
  -- █▄▄ █▄█ █▀█ █▄▄ █ █░▀█ ██▄
  --0=============================================================================================0
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      vim.o.showmode = false
      require('lualine').setup({
        options = {
          icons_enabled = true,
          -- theme = 'dracula',
        },
        -- this part shows full path, helps navigate in Oil.
        sections = {
          lualine_c = { { 'filename', path = 2 } }
        }
      })
    end
  },

  --0=============================================================================================0
  -- █▀▄▀█ ▄▀█ █▀ █▀█ █▄░█
  -- █░▀░█ █▀█ ▄█ █▄█ █░▀█
  --0=============================================================================================0
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup()
    end
  },
  --0=============================================================================================0
  -- █░░ █▀ █▀█
  -- █▄▄ ▄█ █▀▀
  --0=============================================================================================0
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
      local custom_attach = function(client, bufnr)
        print('Lsp Attached.')
      end
      --0=============================================================================================0
      -- █░░ █░█ ▄▀█
      -- █▄▄ █▄█ █▀█
      --0=============================================================================================0
      lspconfig.lua_ls.setup({
        on_attach = custom_attach,
        capabilities = capabilities,
        settings = {
          Lua = {
            runtime = {
              version = 'LuaJIT',
            },
            diagnostics = {
              enable = true,
              -- enable = false,
            },
            workspace = {
              checkThirdParty = false,
              library = {
                vim.env.VIMRUNTIME,
              },
            },
            telemetry = { enable = false },
          },
        },
      })
      --0=============================================================================================0
      -- █▀▄ ▄▀█ █▀█ ▀█▀
      -- █▄▀ █▀█ █▀▄  █
      --0=============================================================================================0
      -- DO NOT SETUP dartls manually when using akinsho/flutter-tools.nvim
      -- lspconfig.dartls.setup{}

      -- new server goes here:
      -- lspconfig.SERVER.setup({
      --    on_attach = custom_attach,
      --    capabilities = capabilities
      --    COPY PASTE SERVER SETTINGS HERE
      --})
    end
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
      require("conform").setup({
        format_on_save = {
          -- These options will be passed to conform.format()
          timeout_ms = 500,
          lsp_fallback = true,
        },
        formatters_by_ft = {
          dart = { "dart format" }
        }
      })
    end
  },
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,
  },
  -- {
  --   'rose-pine/neovim',
  --   name = 'rose-pine',
  --   config = function()
  --     vim.cmd("colorscheme rose-pine") -- this applies the theme
  --   end
  -- },
  {
    "nyoom-engineering/oxocarbon.nvim"
    -- Add in any other configuration;
    --   event = foo,
    --   config = bar
    --   end,
  },
  -- {
  --   'olivercederborg/poimandres.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('poimandres').setup {
  --       -- leave this setup function empty for default config
  --       -- or refer to the configuration section
  --       -- for configuration options
  --     }
  --   end,
  --
  --   -- optionally set the colorscheme within lazy config
  --   init = function()
  --     vim.cmd("colorscheme poimandres")
  --   end
  -- },
  -- {
  --   'AlexvZyl/nordic.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require 'nordic'.load()
  --   end
  -- },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build =
    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  },
  --0=============================================================================================0
  -- █▀▀ █▀▄▀█ █▀█
  -- █▄▄ █░▀░█ █▀▀
  --0=============================================================================================0
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
      -- Other:
      'hrsh7th/cmp-path',
    },
    config = function()
      local cmp = require('cmp')
      local cmp_ap = require('nvim-autopairs.completion.cmp')
      local luasnip = require('luasnip')
      luasnip.config.setup {}
      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered()
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
        }),
      })
      -- bracket completion for lua
      cmp.event:on(
        'confirm_done',
        cmp_ap.on_confirm_done()
      )
    end
  },
})
--0=========================================================================0
-- █▀█ █░░ █░█ █▀▀ █ █▄░█ █▀   █▀▀ █▄░█ █▀▄   █░█ █▀▀ █▀█ █▀▀
-- █▀▀ █▄▄ █▄█ █▄█ █ █░▀█ ▄█   ██▄ █░▀█ █▄▀   █▀█ ██▄ █▀▄ ██▄
--0=========================================================================0
--0=========================================================================0
-- ▄▀█ █░█ ▀█▀ █▀█ █▀▀ █▀▄▀█ █▀▄
-- █▀█ █▄█ ░█░ █▄█ █▄▄ █░▀░█ █▄▀
--0=========================================================================0
-- Highlight yanked text for 150ms
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end
})

--- Make background transparent
-- vim.cmd [[
--     hi Normal guibg=NONE ctermbg=NONE
--     hi CursorLine guibg=NONE ctermbg=NONE
--     hi Pmenu guibg=NONE ctermbg=NONE
--     hi PmenuSel guibg=NONE ctermbg=NONE
--     hi PmenuSbar guibg=NONE ctermbg=NONE
--     hi NormalFloat guibg=NONE ctermbg=NONE
--     hi NormalNC guibg=NONE ctermbg=NONE
-- ]]
--
vim.opt.background = "dark" -- set this to dark or light
vim.cmd.colorscheme "oxocarbon"
