-- lua/plugins/lsp-config.lua
return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {
      PATH = "append",
      ui = { border = "rounded" },
    },
  },

  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      ensure_installed = {
        "clangd",
        "lua_ls",
        "ts_ls", "html", "cssls", "bashls", "pylsp",
        "awk_ls", "asm_lsp", "marksman", "vimls", "typos_lsp",
      },
      automatic_installation = true,
    },
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "prettier", "stylua", "clang-format",
        "eslint_d", "shfmt", "shellcheck",
      },
      run_on_start = true,
    },
  },

  { "folke/neodev.nvim", opts = {} },

  -- LSP configs
  {
    "neovim/nvim-lspconfig",
    -- load when opening files (faster startup)
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      -- Your central loader (keep your namespace consistent)
      require("syntax.servers")
      -- If you use a shared on_attach in syntax/_common.lua,
      -- move buffer-local LSP keymaps there. If you really want a fallback:
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf
          local map = function(mode, lhs, rhs) vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true }) end
          map("n", "K",         vim.lsp.buf.hover)
          map("n", "<leader>gd",vim.lsp.buf.definition)
          map("n", "<leader>gr",vim.lsp.buf.references)
          map("n", "<leader>ca",vim.lsp.buf.code_action)
        end,
      })

      -- Diagnostics UI defaults (keep this here so nothing overrides it later)
      vim.diagnostic.config({
        virtual_text = { source = "if_many" }, -- or true
        signs = true,
        underline = true,
        update_in_insert = true,               -- set false if you prefer after-Insert
        severity_sort = true,
        float = { border = "rounded", source = "if_many" },
      })
      vim.opt.signcolumn = "yes"
    end,
  },
}

