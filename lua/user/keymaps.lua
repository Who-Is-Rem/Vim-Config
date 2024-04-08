local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Leader Key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Simple Shortcuts
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts) -- opens explorer
keymap("n", "<leader>h", ":tab help<cr>", opts) -- opens help in new tab
keymap({ "i", "c", "x", "n" }, "œ", "<esc>", opts) -- <esc> in vim
keymap('t', 'œ', '<C-\\><C-N>', opts) -- <esc> but in terminal
keymap("n", "q", "ZQ", opts) -- closes current buff
keymap("n", "ç˙", ":checkhealth<cr>", opts) -- checkhealth shortcut
keymap("n", "gd", function() vim.lsp.buf.definition() end, opts) -- goes to the function definition

keymap("n", "†", ":60vsplit<cr>:terminal<cr>i", opts) -- opens terminal
keymap('n', '<leader>t', vim.cmd.UndotreeToggle) -- opens undotree

-- Window Navigation
keymap("n", "Ó", "<C-w>h", opts)
keymap("n", "Ô", "<C-w>j", opts)
keymap("n", "", "<C-w>k", opts)
keymap("n", "Ò", "<C-w>l", opts)

keymap("n", "˙", "gT", opts) -- moves to the left tab
keymap("n", "¬", "gt", opts) -- moves to the right tab
keymap("n", "<leader>nt", ":tabnew<cr>", opts) -- creates new tab

keymap("n", "<leader>vs", ":vne<cr>", opts) -- vertical split
keymap("n", "<leader>hs", ":ne<cr>", opts) -- horizontal split

-- Grapple
keymap("n", "<C-e>", ":GrapplePopup tags<cr>", opts)
keymap("n", "<C-t>", ":GrappleToggle<cr>", opts)
keymap("n", "<C-n>", ":GrappleTag key=", opts)

-- Text Editing
keymap("v", "<", "<gv^", opts) -- shift text to the left
keymap("v", ">", ">gv^", opts) -- shift text to the right
keymap({ "n", "v" }, "<leader>y", "\"+y", opts) -- copies whole paragraph
keymap({ "n", "v" }, "<leader>Y", "\"+Y", opts) -- copies whole line
keymap("v", "∆", ":m '>+1<cr>gv=gv", opts) -- moves highlighted text down
keymap("v", "˚", ":m '<-2<cr>gv=gv", opts) -- moves highlighted text up

keymap("x", "<leader>p", "\"_dP", opts) -- keeps copied text
keymap("n", "<leader>f", function() -- formatting
    vim.lsp.buf.format()
end)

-- Latex
-- F5 processes the document once, and refreshes the view
keymap({ 'n', 'v', 'i' }, '<F5>', function() require("knap").process_once() end)
-- F6 closes the viewer application, and allows settings to be reset
keymap({ 'n', 'v', 'i' }, '<F6>', function() require("knap").close_viewer() end)
-- F7 toggles the auto-processing on and off
keymap({ 'n', 'v', 'i' }, '<F7>', function() require("knap").toggle_autopreviewing() end)
-- F8 invokes a SyncTeX forward search, or similar, where appropriate
keymap({ 'n', 'v', 'i' }, '<F8>', function() require("knap").forward_jump() end)


-- edits word that the cursor is on
keymap("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- toggle autosave
keymap("n", "<leader>n", ":ASToggle<cr>", opts)

-- Symbol keymaps
keymap("i", "ßa", "α", opts)
keymap("i", "ßb", "β", opts)
keymap("i", "ßc", "χ", opts)
keymap("i", "ßd", "δ", opts)
keymap("i", "ße", "ε", opts)
keymap("i", "ßg", "γ", opts)
keymap("i", "ßh", "θ", opts)
keymap("i", "ßi", "φ", opts)
keymap("i", "ßk", "κ", opts)
keymap("i", "ßl", "λ", opts)
keymap("i", "ßm", "μ", opts)
keymap("i", "ßn", "η", opts)
keymap("i", "ßo", "ω", opts)
keymap("i", "ßp", "π", opts)
keymap("i", "ßq", "√", opts)
keymap("i", "ßr", "ρ", opts)
keymap("i", "ßs", "σ", opts)
keymap("i", "ßt", "τ", opts)
keymap("i", "ßz", "ζ", opts)
keymap("i", "ßx", "є", opts)

keymap("i", "ßD", "Δ", opts)
keymap("i", "ßT", "Θ", opts)
keymap("i", "ßO", "Ω", opts)
keymap("i", "ßP", "Φ", opts)
keymap("i", "ßS", "Σ", opts)
keymap("i", "ßI", "∫", opts)


-- venn.nvim: enable or disable keymappings
function _G.Toggle_venn()
    local venn_enabled = vim.inspect(vim.b.venn_enabled)
    if venn_enabled == "nil" then
        vim.opt.ve = "all"
        vim.b.venn_enabled = true
        vim.cmd [[setlocal ve=all]]
        -- draw a line on HJKL keystokes
        vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<CR>", { noremap = true })
        vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<CR>", { noremap = true })
        vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<CR>", { noremap = true })
        vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<CR>", { noremap = true })
        -- draw a box by pressing "f" with visual selection
        vim.api.nvim_buf_set_keymap(0, "v", "b", ":VBox<CR>", { noremap = true })
    else
        vim.opt.ve = ""
        vim.cmd [[setlocal ve=]]
        vim.cmd [[mapclear <buffer>]]
        vim.b.venn_enabled = nil
    end
end

-- toggle keymappings for venn using <leader>v
vim.api.nvim_set_keymap('n', '<leader>v', ":lua Toggle_venn()<CR>", { noremap = true })
