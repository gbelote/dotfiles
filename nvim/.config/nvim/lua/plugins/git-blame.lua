return {
  "f-person/git-blame.nvim",
  config = function()
    local git_blame = require("gitblame")

    git_blame.disable()
  end,
}
