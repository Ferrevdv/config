-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

require('lualine').setup {
  options = {
    theme = "auto" -- or you can assign github_* themes individually.
    -- ... your lualine config
  }
}
