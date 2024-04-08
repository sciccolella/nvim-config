vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

-- [Setting]
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"      --enable mouse mode
vim.opt.showmode = false -- don't show the mode, already in status line

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

vim.opt.undofile = true    -- Save undo history
vim.opt.signcolumn = "yes" -- Keep signcolumn on by default

vim.opt.updatetime = 250   -- Decrease update time

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

vim.opt.cursorline = true -- Show which line your cursor is on
vim.opt.scrolloff = 10    -- Minimal number of screen lines to keep above and below the cursor.

-- [[ Basic Keymaps ]]
-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<C-l>", "<C-a>")

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
