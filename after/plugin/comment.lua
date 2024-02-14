require("Comment").setup {
    padding = true,
    sticky = true,
    ---Lines to be ignored while (un)comment
    ignore = nil,
    toggler = {
        line = '÷',
        block = '¿',
    },
    opleader = {
        line = '÷',
        block = '¿',
    },
    extra = {
        ---Add comment on the line above
        -- above = 'gcO',
        ---Add comment on the line below
        -- below = 'gco',
        ---Add comment at the end of line
        -- eol = 'gcA',
    },
    mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = false,
    },
    ---Function to call before (un)comment
    pre_hook = nil,
    ---Function to call after (un)comment
    post_hook = nil,
}

-- Map languages that do not have mappings 
local ft = require("Comment.ft")
ft.set('lua', {'--%s', '--[[%s]]'})
