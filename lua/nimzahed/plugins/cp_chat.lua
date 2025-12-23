return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
        -- UI
        window = {
            layout = "vertical", -- or "vertical", "horizontal"
            width = 0.25,      -- 50% of screen width
            border = "rounded",
        },
        -- Chat
        show_help = true,
        auto_follow_cursor = true,
        -- Model
        -- model = "gpt-4", -- or "gpt-3.5-turbo" if you want faster/cheaper
        -- Prompts
        prompts = {
            -- explain = "Explain the following code:",
            -- review = "Review this code for improvements:",
            -- refactor = "Refactor this code:",
        },
        -- Other
        debug = false,
    },
    keys = {
        { "<leader>cc", "<cmd>CopilotChatToggle<cr>", desc = "Toggle Copilot Chat" },
        { "<leader>cq", "<cmd>CopilotChatQuick<cr>", desc = "Quick Chat" },
    },
  },
}
