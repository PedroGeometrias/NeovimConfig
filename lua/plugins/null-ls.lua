-- lua/plugins/null-ls.lua
return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "jay-babu/mason-null-ls.nvim",
  },
    -- mason  stuff
  opts = function()
    require("mason-null-ls").setup({
      ensure_installed = { "prettierd", "prettier", "cppcheck", "stylua", "clang-format", "write-good" },
      automatic_installation = true,
    })
  end,

  config = function()
    local null_ls = require("null-ls")
    local fmt    = null_ls.builtins.formatting
    local ca     = null_ls.builtins.code_actions

    -- pick prettierd if you have it, else prettier
    local prettier_like = fmt.prettierd or fmt.prettier

    local sources = {
      prettier_like.with({
        prefer_local = "node_modules/.bin",
        -- example: disable for markdown if you prefer marksman there
        -- disabled_filetypes = { "markdown" },
      }),
    fmt.clang_format.with({
        filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
      }),
      -- optional extras (uncomment if you use them)
      -- fmt.stylua,
      -- fmt.clang_format,

      ca.gitsigns,
    }

    local function attach_format_keymap(client, bufnr)
      local function nls_format()
        vim.lsp.buf.format({
          bufnr = bufnr,
          timeout_ms = 5000,
          filter = function(c) return c.name == "null-ls" end,
        })
      end
      vim.keymap.set("n", "<leader>gf", nls_format,
        { buffer = bufnr, desc = "Format (null-ls)" })

      -- OPTIONAL: format on save for selected filetypes
      local allow = { javascript=true, javascriptreact=true, typescript=true,
                      typescriptreact=true, json=true, jsonc=true, lua=true }
      if allow[vim.bo[bufnr].filetype] then
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          callback = nls_format,
          desc = "Format with null-ls on save",
        })
      end
    end

    null_ls.setup({
      sources = sources,
      on_attach = attach_format_keymap,
      -- debug = true,  -- enable if you’re troubleshooting
    })
  end,
}

