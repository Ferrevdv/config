-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>td", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- [keys.insert]
-- C-p = "move_line_up"
--C-n = "move_line_down"
--C-e = "goto_line_end_newline"
--C-a = "goto_line_start"
--C-f = "move_char_right"
--C-b = "move_char_left"

----------------------
-- Plugin Keybinds
----------------------

-- invert <C-v> and V (inspired by Hx)
keymap.set("n", "<C-v>", "V")
keymap.set("n", "V", "<C-v>")

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
-- basics
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fw", "<cmd>Telescope grep_string<cr>") -- "find word": find string under cursor in current working directory
keymap.set("n", "<leader>fc", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>")

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- advanced telescope vim pickers
keymap.set("n", "<leader>fh", "<cmd>Telescope search_history<cr>")
keymap.set("n", "<leader>fj", "<cmd>Telescope jumplist<cr>")
keymap.set("n", "<leader>fu", "<cmd>Telescope undo<cr>")

-- neovim LSP pickers
keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>")
  -- gR to open trouble.nvim window (can be handier for overview, quit with 'q'/xx as always for trouble window)
  -- gd for definition peek
  -- gD for definition jump
  -- ('q' to quit peek window, '<C-c>' to quit telescope, as per usual)

-- for further lsp navigation: see lspsaga
-- for diagnostics: use trouble.nvim



-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- harpoon (ideal for rapid file switching!)
  -- 'q' to quit popup window
  -- <C-v> to vertical split on file
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
keymap.set("n", "<leader>h", mark.add_file)
-- just dd in harpoon menu to delete one
keymap.set("n", "<C-e>", ui.toggle_quick_menu) -- so also for exit! (toggle)
keymap.set("n", "<C-m>", function() ui.nav_file(1) end)
keymap.set("n", "<C-n>", function() ui.nav_file(2) end)
keymap.set("n", "<C-b>", function() ui.nav_file(3) end)

-- aerial (for keymaps when open, see aerial.lua)
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>") -- "toggle": also to close!
vim.keymap.set("n", "<C-a>", "<cmd>Telescope aerial<CR>")
vim.keymap.set("n", "<C-[>", "<cmd>AerialNext<CR>")
vim.keymap.set("n", "<C-]>", "<cmd>AerialPrev<CR>")
vim.keymap.set("n", "zn", "<cmd>AerialNavToggle<CR>")

-- trouble.nvim: for diagnostics
  -- 'q' to exit window
  -- zm/zr and za for folds!
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end) -- to close diagnostic window from code window (otherwise just 'q')
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

-- Obsidian --

-- use "- []" to create a TODO item
-- use "- [x]" to complete the TODO item
keymap.set("n", "<leader>od", "<cmd>ObsidianToday<cr>") -- open daily note
keymap.set("n", "<leader>ot", "<cmd>ObsidianTomorrow<cr>") -- open daily note tomorrow ('next')
keymap.set("n", "<leader>oy", "<cmd>ObsidianYesterday<cr>") -- open daily note yesterday ('previous')


-- analogue as standard fs/ff (now in Obsidian)
keymap.set("n", "<leader>ofs", "<cmd>ObsidianSearch<cr>") -- live grep on file contents
keymap.set("n", "<leader>off", "<cmd>ObsidianQuickSwitch<cr>") -- fuzzy file picker

keymap.set("n", "<leader>ol", "<cmd>ObsidianFollowLink<cr>") -- follow link
keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<cr>") -- list of references to current note

-- --

-- ThePrimeagen --
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move around selected part (auto-ident!)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move around selected part (auto-ident!)

vim.keymap.set("n", "J", "mzJ`z") -- appends line before to current line with space: cursor remains
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- half page jump with cursor in middle
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- half page jump with cursor in middle
vim.keymap.set("n", "n", "nzzzv") -- while searching keep search term in middle
-- very handy!!
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- start replacing word we are on in whole file!
-- <C-c> to exit

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

-- TODO: tab for autocompletion
