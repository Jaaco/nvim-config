-- vim.cmd('colorscheme habamax')

--[[
For later:
code-runner
friendly snippit
]]

-- remeber:
-- TSInstall dart ec

-- TODO
-- PERF
-- HACK
-- NOTE
-- FIX
-- WARNING



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
-- vim.o.lazyredraw = true
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

--
-- jacob added
--

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

-- LSP
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
-- rm('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help)

-- vim.

rm('n', '<leader>.', vim.lsp.buf.code_action, { desc = "Code Action" })

-- Renamer
vim.api.nvim_set_keymap('i', '<F2>', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })

--LSP
rm("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame" })
rm('n', '<leader>gd', vim.lsp.buf.definition, { desc = "[G]oto [D]efinition" })
rm('n', '<leader>ga', vim.lsp.buf.code_action, { desc = "[G]oto [A]ction" })
rm('n', '<leader>sdd', vim.diagnostic.setloclist, { desc = "[S]earch [D]iagnostics" })
rm('n', '<leader>sd', "<Cmd>Telescope diagnostics severity_bound=ERROR <CR>", { desc = '[S]earch [D]iagnostics' })
-- rm('n', '<leader>sd', "<Cmd>Telescope diagnostics <CR>", { desc = '[S]earch [D]iagnostics' })
-- rm('n', '<leader>sd', "<Cmd>Telescope diagnostics severity_bound=ERROR <CR>", { desc = '[S]earch [D]iagnostics' })


-- Telescope
rm('n', '<leader>gr', '<CMD>Telescope lsp_references<CR>', { desc = "[G]oto [R]eferences" })

-- S&R -> replace word under cursor across file
-- rm('n', '<leader>s', [[:%s/<C-r><C-w>//gc<Left><Left><Left>]])
--
-- S&R -> replace selected phrase across file
-- rm('v', '<leader>s', [[y:%s/<C-r>"//gc<Left><Left><Left>]])
-- S&R -> select text, press and write what to search for and replace
-- rm('v', '<leader>sr', [[:s///gI<Left><Left><Left><Left>]])
--
-- /jacob added
--



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
      rm('n', '<leader>lr', builtin.lsp_references)
      -- telescope's setup
      require('telescope').setup {
        defaults = {
          sorting_strategy = 'ascending',
          layout_strategy = 'horizontal',
          layout_config = {
            horizontal = {
              prompt_position = 'top',
              preview_width = 0.4,
              results_width = 0.6,
              height = 0.7,
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
    -- build = ":TSUpdate",
    config = function()
      -- ENABLES THIS IF USING WINDOWS:
      -- require('nvim-treesitter.install').compilers = { 'zig' }
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'dart', 'go', 'markdown', 'markdown_inline' },
        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,
        -- Automatically install missing parsers when entering buffer
        auto_install = false,
        highlight = {
          enable = true,
          disable = { "markdown" },
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
      require('mason').setup({
        ensure_installed = {
          "gopls", -- and any other servers you want to install automatically
        },
      })
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
      local custom_attach = function(_, _)
        print('Lsp Attached.')
      end

      local util = require("lspconfig/util")

      -- rounded borders for hover
      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = "rounded",
      })


      -- noice
      require("noice").setup({
        lsp = {

          hover = {
            enabled = true,
            border = {
              style = "rounded",
              padding = { 0, 2 },
            },

          },
          override = {
            -- override the default lsp markdown formatter with Noice
            ["vim.lsp.util.convert_input_to_markdown_lines"] = false,
            -- override the lsp markdown formatter with Noice
            ["vim.lsp.util.stylize_markdown"] = false,
            -- override cmp documentation with Noice (needs the other options to work)
          },

          -- defaults for hover and signature help
          documentation = {
            view = "hover",
            opts = {
              ["cmp.entry.get_documentation"] = false,
              lang = "markdown",
              replace = false,
              render = "plain",
              format = { "{message}" },
              win_options = { concealcursor = "n", conceallevel = 3 },
              border = {
                style = "rounded",
                padding = { 0, 2 },
              },
            },
          },
        },

        -- you can enable a preset for easier configuration
        presets = {
          bottom_search = true,         -- use a classic bottom cmdline for search
          command_palette = true,       -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false,           -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = true,        -- add a border to hover docs and signature help
          -- lsp_doc_border = {
          --   views = {
          --     hover = {
          --       border = {
          --         style = "rounded",
          --       },
          --       position = { row = 2, col = 2 },
          --     },
          --   },
          -- }

        }
      })

      -- LUA
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

      -- PYTHON
      lspconfig.jedi_language_server.setup({
        -- on_attach = custom_attach,
        -- capabilities = capabilities,
        -- init_options = {
        --   diagnostics = {
        --     -- enable = false,
        --   },
        -- },
      })

      -- GO
      lspconfig.gopls.setup {
        on_attach    = custom_attach,
        capabilities = capabilities,
        cmd          = { "gopls" },
        filetypes    = { "go", "gomd", "gowork", "gotmpl" },
        settings     = {
          completeUnimported = true,
          usePlaceholders = true,
          analyses = {
            unusedparams = true,
          },
        },
        root_dir     = util.root_pattern("go.work", "go.mod", ".git")
      }

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
    'filipdutescu/renamer.nvim',
  },
  {
    -- Colored Parentheses
    'HiPhish/rainbow-delimiters.nvim',
    config = function()
      require('rainbow-delimiters.setup').setup({
        strategy = {
          -- [''] = rainbow_delimiters.strategy['global'],
          -- vim = rainbow_delimiters.strategy['local'],
        },
        query = {
          [''] = 'rainbow-delimiters',
          lua = 'rainbow-blocks',
        },
        priority = {
          [''] = 110,
          lua = 210,
        },
        highlight = {
          'RainbowDelimiterRed',
          'RainbowDelimiterYellow',
          'RainbowDelimiterBlue',
          'RainbowDelimiterOrange',
          'RainbowDelimiterGreen',
          'RainbowDelimiterViolet',
          'RainbowDelimiterCyan',
        },
      })
    end,
  },
  -- {
  --   "iamcco/markdown-preview.nvim",
  --   cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  --   ft = { "markdown" },
  --   build = function() vim.fn["mkdp#util#install"]() end,
  -- },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      mode = "n", -- NORMAL mode
      -- prefix: use "<leader>f" for example for mapping everything related to finding files
      -- the prefix is prepended to every mapping part of `mappings`
      prefix = "",
      buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
      silent = true,  -- use `silent` when creating keymaps
      noremap = true, -- use `noremap` when creating keymaps
      nowait = false, -- use `nowait` when creating keymaps
      expr = false,   -- use `expr` when creating keymaps
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
          dart = { "dart format" },
          python = { "black %" }
        }
      })
    end
  },
  {
    'tpope/vim-fugitive'
  },
  {
    'mbbill/undotree'
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    -- @type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
      { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
      { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
      { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
    config = function()
      vim.api.nvim_set_hl(0, 'FlashLabel', { fg = '#FFFFFF' })
    end
  },
  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup()
    end
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require 'colorizer'.setup()
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

    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  { "nyoom-engineering/oxocarbon.nvim" },
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
  {
    'nvimtools/none-ls.nvim',
    config = function()
      local null_ls = require("null-ls")
      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.gofumpt,
          null_ls.builtins.formatting.goimports_reviser,
          null_ls.builtins.formatting.golines,
        },
        on_attach = function(client, bufnr)
          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({
              group = augroup,
              buffer = bufnr,
            })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ bufnr = bufnr })
              end,
            })
          end
        end,
      })
    end,

  },
  {
    'folke/noice.nvim',
    event = "VeryLazy",
    opts = {

      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", 'gomod' },
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },
  {
    'folke/todo-comments.nvim',
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
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

vim.api.nvim_create_autocmd("BufWritePost", {
  callback = function()
    local filetype = vim.bo.filetype
    if filetype == "python" then
      vim.cmd("silent !black %")
    else
      return
    end
  end
})


require("telescope").load_extension("flutter")

--
vim.opt.background = "dark"            -- set this to dark or light
vim.cmd.colorscheme "catppuccin-mocha" --"oxocarbon"
--
require("notify").setup({
  background_colour = "#000000",
})

-- Make background transparent
vim.cmd [[
    hi Normal guibg=NONE ctermbg=NONE
    hi CursorLine guibg=NONE ctermbg=NONE
    hi Pmenu guibg=NONE ctermbg=NONE
    hi PmenuSel guibg=NONE ctermbg=NONE
    hi PmenuSbar guibg=NONE ctermbg=NONE
    hi NormalFloat guibg=NONE ctermbg=NONE
    hi NormalNC guibg=NONE ctermbg=NONE
]]
