-- default theme without specific cterm colors
vim.api.nvim_set_hl(0, 'SpecialKey', { ctermfg = 237, fg = '#3a3a3a' })
vim.api.nvim_set_hl(0, 'NonText', { ctermfg = 237, fg = '#3a3a3a' })
vim.api.nvim_set_hl(0, 'Folded', { ctermfg = 250, ctermbg = 239, fg = '#bcbcbc', bg = '#4e4e4e' })
vim.api.nvim_set_hl(0, 'DiffChange', { ctermfg = 188, ctermbg = 237, fg = '#d7d7d7', bg = '#3a3a3a' })
vim.api.nvim_set_hl(0, 'SignColumn', { ctermfg = 237, fg = '#3a3a3a' })
vim.api.nvim_set_hl(0, 'Conceal', { ctermfg = 237, fg = '#3a3a3a' })
vim.api.nvim_set_hl(0, 'PmenuThumb', { ctermbg = 237, bg = '#3a3a3a' })
vim.api.nvim_set_hl(0, 'CursorColumn', { ctermbg = 239, bg = '#4e4e4e' })
vim.api.nvim_set_hl(0, 'CursorLine', { ctermbg = 237, bg = '#3a3a3a' })
vim.api.nvim_set_hl(0, 'NormalFloat', { ctermbg = 234, bg = '#121212' })
vim.api.nvim_set_hl(0, 'Cursor', { ctermfg = 235, ctermbg = 248, fg = '#262626', bg = '#a8a8a8' })
vim.api.nvim_set_hl(0, 'lCursor', { ctermfg = 235, ctermbg = 248, fg = '#262626', bg = '#a8a8a8' })
-- vim.api.nvim_set_hl(0, 'Normal', { ctermfg = 248, ctermbg = 235, fg = '#a8a8a8', bg = '#262626' })
vim.api.nvim_set_hl(0, 'Delimiter', { ctermfg = 248, fg = '#a8a8a8' })

-- Override cterm 0-15 (avoid system overriding)
vim.api.nvim_set_hl(0, 'Search', { ctermfg = 0, ctermbg = 136, fg = '#d7d7d7', bg = '#af8700' })
vim.api.nvim_set_hl(0, 'CurSearch', { ctermfg = 0, ctermbg = 222, fg = '#262626', bg = '#ffd787' })

vim.api.nvim_set_hl(0, 'Identifier', { ctermfg = 223, fg = '#ffd7af' })
vim.api.nvim_set_hl(0, 'Function', { ctermfg = 153, fg = '#afd7ff' })
-- vim.api.nvim_set_hl(0, 'Special', { ctermfg = 122, fg = '#87d7d7' })

vim.api.nvim_set_hl(0, 'Directory', { ctermfg = 122, fg = '#87d7d7' })
vim.api.nvim_set_hl(0, 'ErrorMsg', { ctermfg = 167, fg = '#d75f5f' })
vim.api.nvim_set_hl(0, 'MoreMsg', { ctermfg = 122, fg = '#87d7d7' })
vim.api.nvim_set_hl(0, 'ModeMsg', { ctermfg = 114, fg = '#87d787' })
vim.api.nvim_set_hl(0, 'Question', { ctermfg = 122, fg = '#87d7d7' })
vim.api.nvim_set_hl(0, 'WarningMsg', { ctermfg = 222, fg = '#ffd787' })
vim.api.nvim_set_hl(0, 'DiffAdd', { ctermfg = 0, ctermbg = 22, fg = '#d7d7d7', bg = '#005f00' })
vim.api.nvim_set_hl(0, 'DiffDelete', { ctermfg = 167, fg = '#d75f5f', bold = true })
vim.api.nvim_set_hl(0, 'DiffText', { ctermfg = 0, ctermbg = 23, fg = '#d7d7d7', bg = '#005f87' })
vim.api.nvim_set_hl(0, 'QuickFixLine', { ctermfg = 122, fg = '#87d7d7' })
vim.api.nvim_set_hl(0, 'DiagnosticError', { ctermfg = 167, fg = '#d75f5f' })
vim.api.nvim_set_hl(0, 'DiagnosticWarn', { ctermfg = 222, fg = '#ffd787' })
vim.api.nvim_set_hl(0, 'DiagnosticInfo', { ctermfg = 122, fg = '#87d7d7' })
vim.api.nvim_set_hl(0, 'DiagnosticHint', { ctermfg = 74, fg = '#5fafd7' })
vim.api.nvim_set_hl(0, 'DiagnosticOk', { ctermfg = 114, fg = '#87d787' })

vim.api.nvim_set_hl(0, 'Added', { ctermfg = 114, fg = '#87d787' })
vim.api.nvim_set_hl(0, 'Removed', { ctermfg = 167, fg = '#d75f5f' })
vim.api.nvim_set_hl(0, 'Changed', { ctermfg = 122, fg = '#87d7d7' })
vim.api.nvim_set_hl(0, 'RedrawDebugClear', { ctermfg = 0, ctermbg = 136, bg = '#af8700' })
vim.api.nvim_set_hl(0, 'RedrawDebugComposed', { ctermfg = 0, ctermbg = 22, bg = '#005f00' })
vim.api.nvim_set_hl(0, 'RedrawDebugRecompose', { ctermfg = 0, ctermbg = 88, bg = '#870000' })
vim.api.nvim_set_hl(0, 'Error', { ctermfg = 0, ctermbg = 88, fg = '#d7d7d7', bg = '#870000' })
vim.api.nvim_set_hl(0, 'NvimInternalError', { ctermfg = 196, ctermbg = 196, fg = '#ff0000', bg = '#ff0000' })

--

vim.api.nvim_set_hl(0, 'String', { ctermfg = 71, fg = '#5faf5f' })
vim.api.nvim_set_hl(0, 'Comment', { ctermfg = 244, fg = '#808080' })
vim.api.nvim_set_hl(0, 'Visual', { ctermbg = 240, bg = '#585858' })
vim.api.nvim_set_hl(0, 'LineNr', { ctermfg = 244, fg = '#808080' })

vim.api.nvim_set_hl(0, 'Constant', { ctermfg = 36, fg = '#00af87' })
vim.api.nvim_set_hl(0, 'Type', { ctermfg = 75, fg = '#5fafff' })
vim.api.nvim_set_hl(0, 'PreProc', { ctermfg = 158, fg = '#afffd7' })
vim.api.nvim_set_hl(0, 'Macro', { ctermfg = 116, fg = '#87d7d7' })
vim.api.nvim_set_hl(0, 'Operator', { ctermfg = 152, fg = '#afd7d7' })
vim.api.nvim_set_hl(0, '@variable', { ctermfg = 251, fg = '#c6c6c6' })

-- NOTE: language
vim.api.nvim_set_hl(0, "@type.builtin.c", { link = 'Type' })
vim.api.nvim_set_hl(0, '@variable.parameter', { ctermfg = 182, fg = '#d7afd7' })
vim.api.nvim_set_hl(0, '@variable.parameter.c', { link = '@variable.parameters' })

vim.api.nvim_set_hl(0, '@string.escape', { ctermfg = 69, fg = '#5f87ff' })
vim.api.nvim_set_hl(0, '@string.escape.c', { link = '@string.escape' })

local sct_keyword = 133
local sct_keyword_gui = "#af5faf"
vim.api.nvim_set_hl(0, 'Statement', { ctermfg = sct_keyword, fg = sct_keyword_gui })
vim.api.nvim_set_hl(0, '@keyword.modifier', { bold=true, ctermfg = sct_keyword, fg = sct_keyword_gui })
vim.api.nvim_set_hl(0, '@variable.modifier.c', { link = '@variable.modifier' })

vim.api.nvim_set_hl(0, '@keyword.directive.c', { link = 'PreProc' })
vim.api.nvim_set_hl(0, '@keyword.directive.define.c', { link = 'PreProc' })

vim.api.nvim_set_hl(0, "@constant.macro.c", { link = "Macro" })
vim.api.nvim_set_hl(0, "@lsp.type.macro.c", { link = "Macro" })

-- NOTE: todocomments_plugin
vim.api.nvim_set_hl(0, 'TodoBgFIX', { ctermfg = 234, ctermbg = 217, fg = '#14161b', bg = '#ffc0b9', bold = true })
vim.api.nvim_set_hl(0, 'TodoFgFIX', { ctermfg = 217, fg = '#ffc0b9' })
vim.api.nvim_set_hl(0, 'TodoSignFIX', { ctermfg = 217, fg = '#ffc0b9' })

vim.api.nvim_set_hl(0, 'TodoBgNOTE', { ctermfg = 234, ctermbg = 153, fg = '#14161b', bg = '#a6dbff', bold = true })
vim.api.nvim_set_hl(0, 'TodoFgNOTE', { ctermfg = 153, fg = '#a6dbff' })
vim.api.nvim_set_hl(0, 'TodoSignNOTE', { ctermfg = 153, fg = '#a6dbff' })

vim.api.nvim_set_hl(0, 'TodoBgWARN', { ctermfg = 234, ctermbg = 229, fg = '#14161b', bg = '#fce094', bold = true })
vim.api.nvim_set_hl(0, 'TodoFgWARN', { ctermfg = 229, fg = '#fce094' })
vim.api.nvim_set_hl(0, 'TodoSignWARN', { ctermfg = 229, fg = '#fce094' })

vim.api.nvim_set_hl(0, 'TodoBgPERF', { ctermfg = 234, ctermbg = 153, fg = '#14161b', bg = '#a6dbff', bold = true })
vim.api.nvim_set_hl(0, 'TodoFgPERF', { ctermfg = 153, fg = '#a6dbff' })
vim.api.nvim_set_hl(0, 'TodoSignPERF', { ctermfg = 153, fg = '#a6dbff' })

vim.api.nvim_set_hl(0, 'TodoBgHACK', { ctermfg = 234, ctermbg = 229, fg = '#14161b', bg = '#fce094', bold = true })
vim.api.nvim_set_hl(0, 'TodoFgHACK', { ctermfg = 229, fg = '#fce094' })
vim.api.nvim_set_hl(0, 'TodoSignHACK', { ctermfg = 229, fg = '#fce094' })

vim.api.nvim_set_hl(0, 'TodoBgTEST', { ctermfg = 234, ctermbg = 153, fg = '#14161b', bg = '#a6dbff', bold = true })
vim.api.nvim_set_hl(0, 'TodoFgTEST', { ctermfg = 153, fg = '#a6dbff' })
vim.api.nvim_set_hl(0, 'TodoSignTEST', { ctermfg = 153, fg = '#a6dbff' })
vim.api.nvim_set_hl(0, 'TodoBgTODO', { ctermfg = 234, ctermbg = 123, fg = '#14161b', bg = '#8cf8f7', bold = true })
vim.api.nvim_set_hl(0, 'TodoFgTODO', { ctermfg = 123, fg = '#8cf8f7' })
vim.api.nvim_set_hl(0, 'TodoSignTODO', { ctermfg = 123, fg = '#8cf8f7' })

