vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = ""

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.keymap.set("n", "<leader><leader>", "<C-^>")
vim.opt.mouse = ""

vim.opt.undofile = true    -- Save undo history
vim.opt.signcolumn = "yes" -- Keep signcolumn on by default

vim.opt.cursorline = true  -- Show which line your cursor is on
vim.opt.scrolloff = 10     -- Minimal number of screen lines to keep above and below the cursor.


vim.o.winborder = "solid"
-- Enable break indent
vim.opt.breakindent = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")


-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.diagnostic.config({ virtual_lines = { current_line = true } })
-- vim.diagnostic.config({ virtual_lines = { current_line = false } })

-- -- Snippet jump with C-n/C-p instead of Tab/S-Tab
-- local function set_snippet_jump(direction, key)
--   vim.keymap.set({ "i", "s" }, key, function()
--     if vim.snippet.active({ direction = direction }) then
--       return string.format("<Cmd>lua vim.snippet.jump(%d)<CR>", direction)
--     else
--       return key
--     end
--   end, {
--     desc = "vim.snippet.jump if active, otherwise " .. key,
--     expr = true,
--     silent = true,
--   })
-- end
--
-- set_snippet_jump(1, "<C-n>")
-- set_snippet_jump(-1, "<C-p>")

-- thanks @primeagen
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({ "n", "x" }, "gy", '"+y', { desc = "Copy to system clipboard" })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})


-- STATUSLINE
function _G.sl_lsp()
  local bufnr = vim.api.nvim_get_current_buf()
  local atch_clients = vim.lsp.get_clients({ bufnr = bufnr, })
  if #atch_clients == 0 then
    return ""
  end
  local it = vim.iter(atch_clients)
  it:map(function(clt)
    return clt.name
  end)
  local lsps = it:totable()
  return "[" .. table.concat(lsps, ",") .. "]"
end

vim.o.statusline = [[%<%f:%y%{%v:lua._G.sl_lsp()%}%= %m%r%h %-15(%l,%c%V%)%b']]

-- THEME
require("sictm_hi").setup()

-- TODO: hello
-- WARN: hello
-- NOTE: hello
-- PLUGINS
vim.pack.add({
  { src = "https://github.com/folke/todo-comments.nvim" },
}, { load = true })
require "todo-comments".setup({
  -- keywords = {
  --   FIX = { icon = " ", color = "error", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
  --   TODO = { icon = " ", color = "info" },
  --   HACK = { icon = " ", color = "warning" }f
  --   WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
  --   PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
  --   NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
  --   TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
  -- },
  -- signs = false,
  highlight = {
    keyword = "bg",
  },
})


vim.pack.add({
  { src = "https://github.com/ibhagwan/fzf-lua" },
}, { load = true })
require "fzf-lua".setup({
  -- Any custom opts here
})
-- Add key mappings
-- vim.api.nvim_set_keymap("n", "<F1>", [[<Cmd>lua require"fzf-lua".help_tags()<CR>]], {})
vim.api.nvim_set_keymap("n", "<C-\\>", [[<Cmd>lua require"fzf-lua".builtin()<CR>]], { desc = "builtin" })
vim.api.nvim_set_keymap("n", "<leader>ss", [[<Cmd>lua require"fzf-lua".builtin()<CR>]], { desc = "builtin" })
vim.api.nvim_set_keymap("n", "<C-k>", [[<Cmd>lua require"fzf-lua".buffers()<CR>]], { desc = "buffers" })
vim.api.nvim_set_keymap("n", "<leader>sb", [[<Cmd>lua require"fzf-lua".buffers()<CR>]], { desc = "buffers" })
vim.api.nvim_set_keymap("n", "<C-p>", [[<Cmd>lua require"fzf-lua".files()<CR>]], { desc = "files" })
vim.api.nvim_set_keymap("n", "<leader>sf", [[<Cmd>lua require"fzf-lua".files()<CR>]], { desc = "files" })
vim.api.nvim_set_keymap("n", "<C-l>", [[<Cmd>lua require"fzf-lua".live_grep()<CR>]], { desc = "live_grep" })
vim.api.nvim_set_keymap("n", "<leader>sl", [[<Cmd>lua require"fzf-lua".live_grep()<CR>]],
  { desc = "live_grep" })
vim.api.nvim_set_keymap("n", "<C-g>", [[<Cmd>lua require"fzf-lua".grep_project()<CR>]], { desc = "grep_project" })
vim.api.nvim_set_keymap("n", "<leader>sg", [[<Cmd>lua require"fzf-lua".grep_project()<CR>]], { desc = "grep_project" })
vim.api.nvim_set_keymap("n", "<C-n>", [[<Cmd>lua require"fzf-lua".diagnostics_document()<CR>]],
  { desc = "diagnostics" })
vim.api.nvim_set_keymap("n", "<leader>sd", [[<Cmd>lua require"fzf-lua".diagnostics_document()<CR>]],
  { desc = "diagnostics" })
-- vim.api.nvim_set_keymap("n", "<C-m>", [[<Cmd>lua require"fzf-lua".marks()<CR>]], { desc = "marks" })
vim.api.nvim_set_keymap("n", "<leader>sm", [[<Cmd>lua require"fzf-lua".marks()<CR>]], { desc = "marks" })
vim.api.nvim_set_keymap("n", "<leader>s.", [[<Cmd>lua require"fzf-lua".oldfiles()<CR>]], { desc = "oldfiles" })
vim.api.nvim_set_keymap("n", "<leader>sc", [[<Cmd>lua require"fzf-lua".files({cwd=vim.fn.stdpath("config")})<CR>]],
  { desc = "files(config)" })
vim.api.nvim_set_keymap("n", "<leader>scc", [[<Cmd>lua require"fzf-lua".live_grep({cwd=vim.fn.stdpath("config")})<CR>]],
  { desc = "grep(config)" })

vim.pack.add({
  { src = "https://github.com/nextflow-io/vim-language-nextflow" },
})

vim.pack.add({
  { src = "https://github.com/saghen/blink.cmp", version = vim.version.range("^1") },
}, { load = true })

require "blink.cmp".setup({
  fuzzy = { implementation = "prefer_rust_with_warning" },
  signature = { enabled = true },
  completion = {
    menu = {
      auto_show = false,
      draw = {
        columns = {
          { "kind_icon", gap = 1 }, { "label", "label_description", gap = 1 }, { "source_name" }
        }
      },
    },
  },
  keymap = {
    -- preset = "default",
    ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
    ["<C-e>"] = { "hide" },
    ["<C-y>"] = { "select_and_accept" },

    ["<Up>"] = {},
    ["<Down>"] = {},
    ["<C-p>"] = { "select_prev", "snippet_backward", "fallback_to_mappings" },
    ["<C-n>"] = { "select_next", "snippet_forward", "fallback_to_mappings" },

    ["<C-b>"] = { "scroll_documentation_up", "fallback" },
    ["<C-f>"] = { "scroll_documentation_down", "fallback" },

    ["<Tab>"] = {},
    ["<S-Tab>"] = {},

    ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
  },
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local client = vim.lsp
        .get_client_by_id(
          ev.data.client_id)
    if client
        :supports_method("textDocument/completion")
    then
      vim.lsp.completion.enable(true, client.id, ev.buf,
        { autotrigger = false })
    end
    if client
        :supports_method("textDocument/formatting") then
      vim.keymap.set(
        "n", "grf", function() vim.lsp.buf.format({ async = true }) end,
        { desc = "Format file", buffer = ev.buf })
    end
  end,
})

vim.pack.add {
  { src = "https://github.com/neovim/nvim-lspconfig" },
}
-- vim.pack.add {
--   { src = "https://github.com/nvim-treesitter/nvim-treesitter"},
-- }
-- require'nvim-treesitter.configs'.setup({})

vim.lsp.enable({
  "lua_ls",
  "clangd",
  "bashls",
  "ruff",
})
vim.lsp.config("lua_ls", {
  -- cmd = { "lua-language-server" },
  -- filetypes = { "lua" },
  -- root_markers = {
  --   ".luarc.json",
  --   ".luarc.jsonc",
  --   ".luacheckrc",
  --   ".stylua.toml",
  --   "stylua.toml",
  --   "selene.toml",
  --   "selene.yml",
  --   ".git",
  -- },
  settings = {
    Lua = {
      --     runtime = { version = "Lua 5.1" },
      diagnostics = {
        globals = { "vim" },
      },
      format = {
        enable = true,
        -- Put format options here
        -- NOTE: the value should be STRING!!
        defaultConfig = {
          indent_style = "space",
          indent_size = "2",
          indent_width = "2",
          quote_style = "double",
        }
      },
    },
  },
})

vim.lsp.config("clangd", {
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
})

vim.lsp.config("bashls", {
})

vim.lsp.config("ruff", {
})

vim.lsp.enable("nextflow")

vim.lsp.config["nextflow"] = {
  cmd = { "/opt/homebrew/opt/openjdk/bin/java", "-jar", "/Users/sic/opt/nfls/language-server-all.jar" },
  filetypes = { "nextflow", "nf", "groovy", "config" },
  root_markers = { "nextflow.config", ".git" },
  settings = {
    nextflow = {
      files = {
        exclude = { ".git", ".nf-test", "work" },
      }
    }
  }
}


-- require("lspconfig").bashls.setup({})
--
-- require("lspconfig").clangd.setup({
--   capabilities = capabilities,
-- })


-- add({
--   source = "neovim/nvim-lspconfig",
-- })
-- add({
--   source = "nvim-treesitter/nvim-treesitter",
--   -- Perform action after every checkout
--   hooks = { post_checkout = function() vim.cmd("TSUpdate") end },
-- })
-- require("nvim-treesitter.configs").setup({
--   ensure_installed = { "bash", "c", "diff", "lua", "luadoc", "markdown", "markdown_inline", "query", "vim", "vimdoc", "python" },
--   highlight = { enable = true },
-- })
--
-- --   {
-- --     "stevearc/oil.nvim",
-- --     opts = {},
-- --     -- Optional dependencies
-- --     -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
-- --     -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
-- --     lazy = false,
-- --     config = function()
-- --       require("oil").setup({
-- --         default_file_explorer = false,
-- --       })
-- --     end
-- --   },
-- -- })
--
--
--
-- require("lspconfig").ruff.setup({})
-- require("lspconfig").zls.setup({})
-- require("lspconfig").gopls.setup({})
--
-- require("lspconfig").bashls.setup({})
--
-- require("lspconfig").texlab.setup({
--   settings = {
--     texlab = {
--       forwardSearch = {
--         executable = "/Applications/Skim.app/Contents/SharedSupport/displayline",
--         args = { "-r", "%l", "%p", "%f" }
--       },
--       build = {
--         executable = "tectonic",
--         args = {
--           "-X",
--           "compile",
--           "%f",
--           "--synctex",
--           "--keep-logs",
--           "--keep-intermediates"
--         }
--       }
--     }
--   },
-- })
-- -- NOTE: I do not understand why this does not work,
-- -- Either I am not understanding how I should use nvim-lspconfig
-- -- or something is broken
-- --
-- -- vim.lsp.config("texlab", {
-- --   settings = {
-- --     texlab = {
-- --       forwardSearch = {
-- --         executable = "/Applications/Skim.app/Contents/SharedSupport/displayline",
-- --         args = { "-r", "%l", "%p", "%f" }
-- --       },
-- --       build = {
-- --         executable = "tectonic",
-- --         args = {
-- --           "-X",
-- --           "compile",
-- --           "%f",
-- --           "--synctex",
-- --           "--keep-logs",
-- --           "--keep-intermediates"
-- --         }
-- --       }
-- --     }
-- --   },
-- -- })
-- -- vim.lsp.enable("texlab")
--
-- -- NOTE: Configure skim as:
-- -- cmd: texlab
-- -- args: inverse-search -l "%line" -i "%file"
-- vim.api.nvim_create_autocmd("LspAttach", {
--callback = function(ev)-- local client =
--vim.lsp.get_client_by_id(ev.data.client_id)-- if client and
--client.name ==
-- "texlab" then-- vim.keymap--
--     .set("n", "glb", "<Cmd>TexlabBuild<CR>",
--          -- --{noremap = true, silent = true, buffer = ev.buf,
--                --desc = "Build PDF (Texlab)"} --)-- --vim.keymap--
--     .set("n", "glf", "<Cmd>TexlabForward<CR>",
-- --{noremap = true, silent = true, buffer = ev.buf,
--desc = "Forward (Texlab)"} --)-- end-- end,
-- })
