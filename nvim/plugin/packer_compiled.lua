-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/ferrevandervieren/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/ferrevandervieren/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/ferrevandervieren/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/ferrevandervieren/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/ferrevandervieren/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["aerial.nvim"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["github-nvim-theme"] = {
    config = { "\27LJ\2\n|\0\0\3\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0*colorscheme github_dark_high_contrast\bcmd\bvim\nsetup\17github-theme\frequire\0" },
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme"
  },
  harpoon = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["obsidian.nvim"] = {
    config = { "\27LJ\2\n�\1\0\2\n\0\b\0\24+\2\0\0\18\5\0\0009\3\0\0\18\6\1\0B\3\3\2\n\3\0\0X\4\2�\18\2\3\0X\4\4�6\4\1\0\18\6\1\0B\4\2\2\18\2\4\0006\4\2\0009\4\3\0049\4\4\4\18\6\2\0B\4\2\0026\5\5\0009\5\6\5'\a\a\0\18\b\4\0\18\t\2\0D\5\4\0\14![%s](%s)\vformat\vstring\rbasename\afs\bvim\rtostring\24vault_relative_path�\t\1\0\6\0005\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\0025\3\6\0=\3\a\0025\3\b\0004\4\0\0=\4\t\3=\3\n\0025\3\v\0005\4\r\0005\5\f\0=\5\14\0045\5\15\0=\5\16\0045\5\17\0=\5\18\0045\5\19\0=\5\20\4=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\31\0005\5\30\0=\5 \0045\5!\0=\5\"\0045\5#\0=\5$\0045\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\0045\5-\0=\5.\4=\4/\3=\0030\0025\0031\0003\0042\0=\0043\3=\0034\2B\0\2\1K\0\1\0\16attachments\18img_text_func\0\1\0\1\15img_folder\16Bins/images\aui\14hl_groups\26ObsidianHighlightText\1\0\1\abg\f#75662e\16ObsidianTag\1\0\2\vitalic\2\afg\f#89ddff\24ObsidianExtLinkIcon\1\0\1\afg\f#c792ea\20ObsidianRefText\1\0\2\14underline\2\afg\f#c792ea\18ObsidianTilde\1\0\2\afg\f#ff5370\tbold\2\23ObsidianRightArrow\1\0\2\afg\f#f78c6c\tbold\2\17ObsidianDone\1\0\2\afg\f#89ddff\tbold\2\17ObsidianTodo\1\0\0\1\0\2\afg\f#f78c6c\tbold\2\ttags\1\0\1\rhl_group\16ObsidianTag\19highlight_text\1\0\1\rhl_group\26ObsidianHighlightText\19reference_text\1\0\1\rhl_group\20ObsidianRefText\23external_link_icon\1\0\2\rhl_group\24ObsidianExtLinkIcon\tchar\b\15checkboxes\6~\1\0\2\rhl_group\18ObsidianTilde\tchar\t󰰱\6>\1\0\2\rhl_group\23ObsidianRightArrow\tchar\b\6x\1\0\2\rhl_group\17ObsidianDone\tchar\b\6 \1\0\0\1\0\2\rhl_group\17ObsidianTodo\tchar\t󰄱\1\0\2\20update_debounce\3�\1\venable\2\14templates\18substitutions\1\0\3\16time_format\n%H:%M\vsubdir\19Bins/Templates\16date_format\r%Y-%m-%d\16daily_notes\1\0\3\rtemplate\rDaily.md\vfolder\f_Daily/\16date_format\r%Y-%m-%d\15workspaces\1\0\1\vfinder\19telescope.nvim\1\0\2\tname\rpersonal\tpath\31~/Documents/Obsidian Vault\nsetup\robsidian\frequire\0" },
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/obsidian.nvim",
    url = "https://github.com/epwalsh/obsidian.nvim"
  },
  orgmode = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\forgmode\frequire\0" },
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/orgmode",
    url = "https://github.com/nvim-orgmode/orgmode"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  tagbar = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-undo.nvim"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/telescope-undo.nvim",
    url = "https://github.com/debugloop/telescope-undo.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nC\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nicons\1\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0" },
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["wilder.nvim"] = {
    loaded = true,
    path = "/Users/ferrevandervieren/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: obsidian.nvim
time([[Config for obsidian.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\2\n\0\b\0\24+\2\0\0\18\5\0\0009\3\0\0\18\6\1\0B\3\3\2\n\3\0\0X\4\2�\18\2\3\0X\4\4�6\4\1\0\18\6\1\0B\4\2\2\18\2\4\0006\4\2\0009\4\3\0049\4\4\4\18\6\2\0B\4\2\0026\5\5\0009\5\6\5'\a\a\0\18\b\4\0\18\t\2\0D\5\4\0\14![%s](%s)\vformat\vstring\rbasename\afs\bvim\rtostring\24vault_relative_path�\t\1\0\6\0005\0;6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\0025\3\6\0=\3\a\0025\3\b\0004\4\0\0=\4\t\3=\3\n\0025\3\v\0005\4\r\0005\5\f\0=\5\14\0045\5\15\0=\5\16\0045\5\17\0=\5\18\0045\5\19\0=\5\20\4=\4\21\0035\4\22\0=\4\23\0035\4\24\0=\4\25\0035\4\26\0=\4\27\0035\4\28\0=\4\29\0035\4\31\0005\5\30\0=\5 \0045\5!\0=\5\"\0045\5#\0=\5$\0045\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\0045\5-\0=\5.\4=\4/\3=\0030\0025\0031\0003\0042\0=\0043\3=\0034\2B\0\2\1K\0\1\0\16attachments\18img_text_func\0\1\0\1\15img_folder\16Bins/images\aui\14hl_groups\26ObsidianHighlightText\1\0\1\abg\f#75662e\16ObsidianTag\1\0\2\vitalic\2\afg\f#89ddff\24ObsidianExtLinkIcon\1\0\1\afg\f#c792ea\20ObsidianRefText\1\0\2\14underline\2\afg\f#c792ea\18ObsidianTilde\1\0\2\afg\f#ff5370\tbold\2\23ObsidianRightArrow\1\0\2\afg\f#f78c6c\tbold\2\17ObsidianDone\1\0\2\afg\f#89ddff\tbold\2\17ObsidianTodo\1\0\0\1\0\2\afg\f#f78c6c\tbold\2\ttags\1\0\1\rhl_group\16ObsidianTag\19highlight_text\1\0\1\rhl_group\26ObsidianHighlightText\19reference_text\1\0\1\rhl_group\20ObsidianRefText\23external_link_icon\1\0\2\rhl_group\24ObsidianExtLinkIcon\tchar\b\15checkboxes\6~\1\0\2\rhl_group\18ObsidianTilde\tchar\t󰰱\6>\1\0\2\rhl_group\23ObsidianRightArrow\tchar\b\6x\1\0\2\rhl_group\17ObsidianDone\tchar\b\6 \1\0\0\1\0\2\rhl_group\17ObsidianTodo\tchar\t󰄱\1\0\2\20update_debounce\3�\1\venable\2\14templates\18substitutions\1\0\3\16time_format\n%H:%M\vsubdir\19Bins/Templates\16date_format\r%Y-%m-%d\16daily_notes\1\0\3\rtemplate\rDaily.md\vfolder\f_Daily/\16date_format\r%Y-%m-%d\15workspaces\1\0\1\vfinder\19telescope.nvim\1\0\2\tname\rpersonal\tpath\31~/Documents/Obsidian Vault\nsetup\robsidian\frequire\0", "config", "obsidian.nvim")
time([[Config for obsidian.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: github-nvim-theme
time([[Config for github-nvim-theme]], true)
try_loadstring("\27LJ\2\n|\0\0\3\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0*colorscheme github_dark_high_contrast\bcmd\bvim\nsetup\17github-theme\frequire\0", "config", "github-nvim-theme")
time([[Config for github-nvim-theme]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nicons\1\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: orgmode
time([[Config for orgmode]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\forgmode\frequire\0", "config", "orgmode")
time([[Config for orgmode]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'todo-comments.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
