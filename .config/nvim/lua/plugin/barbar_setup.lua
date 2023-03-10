-- ==================================================================================
--                                      Barbar
-- ==================================================================================
-- URL         : https://github.com/romgrk/barbar.nvim

-- VARIABLE --
local ok, bufferline = pcall(require, "bufferline")
local opts = { noremap = true, silent = true }
local ok_m, mapx = pcall(require, "mapx")

if not ok or not ok_m then
    do
        return
    end
end

bufferline.setup({
    -- Enable/disable animations
    animation = true,

    -- Enable/disable auto-hiding the tab bar when there is a single buffer
    auto_hide = false,

    -- Enable/disable current/total tabpages indicator (top right corner)
    tabpages = true,

    -- Enable/disable close button
    closable = true,

    -- Enables/disable clickable tabs
    --  - left-click: go to buffer
    --  - middle-click: delete buffer
    clickable = true,

    -- Excludes buffers from the tabline
    --exclude_ft = {'javascript'},
    --exclude_name = {'package.json'},

    -- Enable/disable icons
    -- if set to 'numbers', will show buffer index in the tabline
    -- if set to 'both', will show buffer index and icons in the tabline
    icons = true,

    -- If set, the icon color will follow its corresponding buffer
    -- highlight group. By default, the Buffer*Icon group is linked to the
    -- Buffer* group (see Highlighting below). Otherwise, it will take its
    -- default value as defined by devicons.
    icon_custom_colors = false,

    -- Configure icons on the bufferline.
    icon_separator_active = '▎',
    icon_separator_inactive = '▎',
    icon_close_tab = 'X', -- '',
    icon_close_tab_modified = '●',
    icon_pinned = '車',

    -- If true, new buffers will be inserted at the start/end of the list.
    -- Default is to insert after current buffer.
    insert_at_end = false,
    insert_at_start = false,

    -- Sets the maximum padding width with which to surround each tab
    maximum_padding = 1,

    -- Sets the maximum buffer name length.
    maximum_length = 30,

    -- If set, the letters for each buffer in buffer-pick mode will be
    -- assigned based on their name. Otherwise or in case all letters are
    -- already assigned, the behavior is to assign letters in order of
    -- usability (see order below)
    semantic_letters = true,

    -- New buffer letters are assigned in this order. This order is
    -- optimal for the qwerty keyboard layout but might need adjustement
    -- for other layouts.
    letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

    -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
    -- where X is the buffer number. But only a static string is accepted here.
    no_name_title = nil,
})

-- MAPPING --
-- Move to previous/next
mapx.nnoremap("<A-,>", "<Cmd>BufferPrevious<CR>", opts)
mapx.nnoremap("<A-.>", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
mapx.nnoremap("<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
mapx.nnoremap("<A->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
mapx.nnoremap("<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
mapx.nnoremap("<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
mapx.nnoremap("<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
mapx.nnoremap("<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
mapx.nnoremap("<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
mapx.nnoremap("<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
mapx.nnoremap("<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
mapx.nnoremap("<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
mapx.nnoremap("<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
mapx.nnoremap("<A-0>", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
mapx.nnoremap("<A-p>", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
mapx.nnoremap("<A-c>", "<Cmd>BufferClose<CR>", opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
mapx.nnoremap("<C-p>", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
mapx.nnoremap("<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
mapx.nnoremap("<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
mapx.nnoremap("<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
mapx.nnoremap("<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
