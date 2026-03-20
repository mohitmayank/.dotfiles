-- polish.lua — runs last, overrides colorscheme highlights etc.

-- Diff colors matching old vim config
vim.api.nvim_set_hl(0, "DiffAdd",    { ctermfg = 0, ctermbg = 2, bold = false })
vim.api.nvim_set_hl(0, "DiffDelete", { ctermfg = 0, ctermbg = 1, bold = false })
vim.api.nvim_set_hl(0, "DiffChange", { ctermfg = 0, ctermbg = 2, bold = false })
vim.api.nvim_set_hl(0, "DiffText",   { ctermfg = 0, ctermbg = 6, bold = false })
