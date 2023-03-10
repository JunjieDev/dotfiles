-- ==================================================================================
--                                     Indent_blankline
-- ==================================================================================
-- URL         : https://github.com/lukas-reineke/indent-blankline.nvim

-- VARIABLE --
local ok, blankline = pcall(require, "indent_blankline")
local vimc = vim.cmd

if not ok then
    do
        return
    end
end

vimc [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vimc [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vimc [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vimc [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vimc [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vimc [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

blankline.setup {
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}
