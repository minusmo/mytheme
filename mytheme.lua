local colors = {
    bg = "#0a0a0a",
    mantle = "#0c0c0c",
    crust = "#000000",
    surface0 = "#222222",
    surface1 = "#feffff",
    surface2 = "#000000",
    fg = "#f6fff4",
    primary = "#ec796c",
    secondary = "#f28a1e",
    accent = "#45e3e7",
    cursor = "#f87f6f",
    black = "#000000",
    red = "#db6658",
    green = "#4aa651",
    yellow = "#b18824",
    blue = "#3988e3",
    magenta = "#ff5d6f",
    cyan = "#0ca3a4",
    white = "#e4e4e4",
    bright_black = "#232323",
    bright_red = "#febbb0",
    bright_green = "#8be78f",
    bright_yellow = "#fac547",
    bright_blue = "#b3cffd",
    bright_magenta = "#eeb7fa",
    bright_cyan = "#38e9e9",
    bright_white = "#f8f8f8",
}

vim.o.termguicolors = true
vim.g.colors_name = "colorterm"
vim.o.background = "dark"

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- UI
hl("Normal", { fg = colors.fg, bg = colors.bg })
hl("NormalFloat", { fg = colors.fg, bg = colors.mantle })
hl("FloatBorder", { fg = colors.surface2, bg = colors.mantle })
hl("Cursor", { fg = colors.bg, bg = colors.cursor })
hl("CursorLine", { bg = colors.surface0 })
hl("LineNr", { fg = colors.surface1 })
hl("CursorLineNr", { fg = colors.primary, bold = true })
hl("Comment", { fg = colors.bright_black, italic = true })
hl("Search", { fg = colors.bg, bg = colors.yellow })
hl("Visual", { bg = colors.surface1 })
hl("Pmenu", { fg = colors.fg, bg = colors.mantle })
hl("PmenuSel", { fg = colors.bg, bg = colors.primary })
hl("VertSplit", { fg = colors.crust, bg = colors.crust })
hl("StatusLine", { fg = colors.fg, bg = colors.mantle })
hl("StatusLineNC", { fg = colors.surface1, bg = colors.mantle })
hl("SignColumn", { bg = colors.bg })
hl("Folded", { fg = colors.blue, bg = colors.surface0 })
hl("EndOfBuffer", { fg = colors.bg })

-- Syntax Highlights
hl("Keyword", { fg = colors.magenta, bold = true })
hl("Function", { fg = colors.blue })
hl("String", { fg = colors.green })
hl("Number", { fg = colors.red })
hl("Type", { fg = colors.yellow })
hl("Operator", { fg = colors.cyan })
hl("Identifier", { fg = colors.cyan })
hl("Statement", { fg = colors.magenta })
hl("PreProc", { fg = colors.magenta })
hl("Constant", { fg = colors.accent })
hl("Special", { fg = colors.magenta })
hl("Todo", { fg = colors.bg, bg = colors.yellow, bold = true })
hl("Error", { fg = colors.red, bold = true })

-- Treesitter & LSP
hl("@keyword", { fg = colors.magenta, bold = true })
hl("@function", { fg = colors.blue })
hl("@string", { fg = colors.green })
hl("@variable", { fg = colors.fg })
hl("@variable.builtin", { fg = colors.red, italic = true })
hl("@property", { fg = colors.cyan })
hl("@parameter", { fg = colors.yellow, italic = true })
hl("@tag", { fg = colors.magenta })
hl("@tag.attribute", { fg = colors.blue, italic = true })
hl("@markup.heading", { fg = colors.blue, bold = true })
hl("@markup.link", { fg = colors.accent, underline = true })

-- LSP Diagnostics
hl("DiagnosticError", { fg = colors.red })
hl("DiagnosticWarn", { fg = colors.yellow })
hl("DiagnosticInfo", { fg = colors.blue })
hl("DiagnosticHint", { fg = colors.cyan })
hl("LspSignatureActiveParameter", { fg = colors.accent, bold = true })
