-- ==================================================================================
--                                Template-string
-- ==================================================================================
-- URL         : https://github.com/axelvc/template-string.nvim

-- VARIABLE --
local ok, template = pcall(require, "template-string")

if not ok then
    do
        return
    end
end

template.setup({
  filetypes = { 'typescript', 'javascript', 'typescriptreact', 'javascriptreact', 'python' }, -- filetypes where the plugin is active
  jsx_brackets = true, -- must add brackets to jsx attributes
  remove_template_string = false, -- remove backticks when there are no template string
  restore_quotes = {
    -- quotes used when "remove_template_string" option is enabled
    normal = [[']],
    jsx = [["]],
  },
})
