return {
    {
      "neovim/nvim-lspconfig",
      dependencies = {
        {
          "folke/lazydev.nvim",
          ft = "lua", -- only load on lua files
          opts = {
            library = {
              -- See the configuration section for more details
              -- Load luvit types when the `vim.uv` word is found
              { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
          },
        },
      },
      config = function()
        local lspconfig = require("lspconfig")

        -- Lua
        -- Required: https://luals.github.io/#neovim-install
        lspconfig.lua_ls.setup{}

        -- JavaScript/TypeScript
        -- Requires: npm install -g typescript typescript-language-server
        lspconfig.ts_ls.setup{
          init_options = {
            plugins = {
              {
                name = "@vue/typescript-plugin",
                location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
                languages = {"javascript", "typescript", "vue"},
              },
            },
          },
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
          },
        }

        -- Rust
        -- Requires: rust-analyzer
        lspconfig.rust_analyzer.setup{}

        -- C and C++
        -- Requires: clangd
        lspconfig.clangd.setup{
          filetypes = { "c", "cpp", "objc", "objcpp" },
        }
      end
    }
  }
