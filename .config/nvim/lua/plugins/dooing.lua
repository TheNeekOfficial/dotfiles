return {
    -- minimal installation
  {
    "Hashino/doing.nvim",
    cmd = "Do",
    keys = {
      { "<leader>da", function() require("doing").add() end, { desc = "[D]ooing [A]dd" }, },
      { "<leader>dn", function() require("doing").done() end, { desc = "[D]ooing Do[N]e" }, },
      { "<leader>de", function() require("doing").edit() end, { desc = "[D]ooing [E]dit" }, },
      { "<leader>dt", function() require("doing").toggle() end, { desc = "[D]ooing [T]oggle" }, },
    },
    config = function()
      -- Lualine setup
      require("lualine").setup {
        winbar = {
          lualine_a = { require("doing").status },
        },
      }
    end,
  }
}
