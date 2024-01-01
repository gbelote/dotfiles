-- check to see if the OPENAPI_API_KEY is set

if vim.env.OPENAI_API_KEY == nil then
  print("OPENAI_API_KEY not set")
  return {}
end

return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup({
      -- custom keymaps
      keymaps = {
        submit = "<C-s>",
      },
      openai_params = {
        model = "gpt-4",
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
