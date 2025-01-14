return {
    -- minimal installation
  {
    "Hashino/doing.nvim",
    cmd = "Do",
    keys = {
      { "<leader>da", function() require("doing").add() end, {}, },
      { "<leader>dn", function() require("doing").done() end, {}, },
      { "<leader>de", function() require("doing").edit() end, {}, },
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
