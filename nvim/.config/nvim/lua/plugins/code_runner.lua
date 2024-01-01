return {
  -- install Code Runner for running code in neovim
  "CRAG666/code_runner.nvim",
  opts = {
    filetype = {
      python = "python -u",
    },
  },

  keys = {
    { "<leader>r", false, desc = "Run code" },
    { "<leader>rr", ":RunCode<CR>", desc = "Run current file" },
    { "<leader>rc", ":RunClose<CR>", desc = "Close runner" },
  },
}
