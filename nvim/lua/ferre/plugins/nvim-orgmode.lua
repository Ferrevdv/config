-- init.lua

-- Load custom tree-sitter grammar for org filetype
require('orgmode').setup_ts_grammar()

-- Tree-sitter configuration
require('nvim-treesitter.configs').setup({
  -- If TS highlights are not enabled at all, or disabled via ``disable`` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
    additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
})

require('orgmode').setup({
  org_agenda_files = '~/Desktop/VAKKEN/school.org',
  org_default_notes_file = '~/Desktop/VAKKEN/refile.org',
  org_agenda_span = 'week',
  org_hide_leading_stars = false,
  org_deadline_warning_days = 14,
  org_agenda_start_on_weekday = false,

  mappings = {
    agenda = {
      org_agenda_later = 'w' -- so earlier is 'b' & later 'w' (cfr. vim)
    }
  }
})
