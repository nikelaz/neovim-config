return { 
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    opts = {
      debug = true,
      provider = "copilot",
      auto_suggestions_provider = nil,

      -- OpenAI Config 
      openai = {
        endpoint = "https://api.openai.com/v1",
        model = "gpt-4o-mini", -- your desired model (or use gpt-4o, etc.)
        timeout = 30000, -- Timeout in milliseconds, increase this for reasoning models
        temperature = 0,
        max_completion_tokens = 8192, -- Increase this to include reasoning tokens (for reasoning models)
      },
      
      -- Ollama Config
      ollama = {
        model = "qwen3:1.7b",
      },
    },
    build = "make",
    dependencies = {
      "zbirenbaum/copilot.lua", -- Required for copilot provider
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-tree/nvim-web-devicons",
      -- Optional:
      "echasnovski/mini.pick",
      "nvim-telescope/telescope.nvim",
      "ibhagwan/fzf-lua",
    },
  }
}
