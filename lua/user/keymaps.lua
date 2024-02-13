local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- Leader Key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Simple Shortcuts
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts) -- opens explorer
keymap("n", "<leader>h", ":tab help<CR>", opts) -- opens help in new tab
keymap({ "i", "c", "x", "n" }, "œ", "<esc>", opts) -- <esc> in vim
keymap('t', 'œ', '<C-\\><C-N>', opts) -- <esc> but in terminal
keymap("n", "q", "ZQ", opts) -- closes current buff

keymap("n", "†", ":15split<cr>:terminal<cr>i", opts) -- opens terminal
keymap('n', '<leader>t', vim.cmd.UndotreeToggle) -- opens undotree

-- Window Navigation
keymap("n", "Ó", "<C-w>h", opts)
keymap("n", "Ô", "<C-w>j", opts)
keymap("n", "", "<C-w>k", opts)
keymap("n", "Ò", "<C-w>l", opts)

keymap("n", "˙", "gT", opts) -- moves to the left tab
keymap("n", "¬", "gt", opts) -- moves to the right tab
keymap("n", "<leader>nt", ":tabnew<CR>", opts) -- creates new tab

keymap("n", "<leader>vs", ":vne<cr>", opts) -- vertical split
keymap("n", "<leader>hs", ":ne<cr>", opts) -- horizontal split

-- Text Editing
keymap("v", "<", "<gv^", opts) -- shift text to the left
keymap("v", ">", ">gv^", opts) -- shift text to the right
keymap({ "n", "v" }, "<leader>y", "\"+y", opts) -- copies whole paragraph
keymap({ "n", "v" }, "<leader>Y", "\"+Y", opts) -- copies whole line
keymap("v", "∆", ":m '>+1<CR>gv=gv", opts) -- moves highlighted text down
keymap("v", "˚", ":m '<-2<CR>gv=gv", opts) -- moves highlighted text up

keymap("x", "<leader>p", "\"_dP", opts) -- keeps copied text

-- Text Navigation
keymap("n", "<S-h>", "b", opts)
keymap("n", "<S-l>", "w", opts)
keymap("n", "<C-h>", "^", opts)
keymap("n", "<C-l>", "g_", opts)

-- edits word that the cursor is on
keymap("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- don't quite get how this one works
keymap({ "n", "v" }, "<leader>d", "\"_d", opts)

-- formatting
keymap("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- Code Runner
keymap("v", "®", ":<cr>", opts)
keymap("n", "®", ":SnipRun<cr>", opts)

-- toggle autosave
keymap("n", "<leader>n", ":ASToggle<CR>", opts)

-- checkhealth shortcut
keymap("n", "ç˙", ":checkhealth<cr>", opts)

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
