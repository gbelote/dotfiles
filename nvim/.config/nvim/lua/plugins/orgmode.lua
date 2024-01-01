return {
  "nvim-orgmode/orgmode.nvim",
  config = function()
    require("orgmode").setup_ts_grammar()

    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "org" },
      },
      ensure_installed = { "org" },
    })

    require("orgmode").setup({
      org_agenda_files = { "~/org/*", "~/org/**/*" },
      org_default_notes_file = "~/org/refile.org",
      --    org_agenda_templates = {
      --      t = { description = "Todo", template = "* TODO %?", target = "~/org/refile.org" },
      --      n = { description = "Note", template = "* %u %?", target = "~/org/refile.org" },
      --    },
    })
  end,
}
