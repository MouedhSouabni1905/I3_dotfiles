return {
  {
   "amitds1997/remote-nvim.nvim",
   version = "*", -- Pin to GitHub releases
   dependencies = {
       "nvim-lua/plenary.nvim", -- For standard functions
       "MunifTanjim/nui.nvim", -- To build the plugin UI
       "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
   },
   config = true,
}, 
  {"ellisonleao/glow.nvim", config = true, cmd = "Glow"};

  {
    "dustinblackman/oatmeal.nvim",
    cmd = { "Oatmeal" },
    keys = {
        { "<leader>om", mode = "n", desc = "Start Oatmeal session" },
    },
    opts = {
        backend = "ollama",
        model = "codellama:latest",
    },
},
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  

  {
    "nvimtools/none-ls.nvim",
    config=function ()
      local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
        require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
    },
})
	vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
    end
  },

  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim', },
  },
  {
  'Julian/lean.nvim',
  event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },

  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-lua/plenary.nvim',

    -- optional dependencies:

    'andymass/vim-matchup',          -- for enhanced % motion behavior
    'andrewradev/switch.vim',        -- for switch support
    'tomtom/tcomment_vim',           -- for commenting
    'nvim-telescope/telescope.nvim', -- for 2 Lean-specific pickers

    -- a completion engine
    'hrsh7th/nvim-cmp', -- or Saghen/blink.cmp are popular choices
  },
    ---@type lean.Config
  opts = { -- see below for full configuration options
    mappings = true,
  }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {},
          auto_install=true,
          sync_install = true,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
 }
}
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },

