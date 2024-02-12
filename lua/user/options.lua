local options = {
    shiftwidth = 4,
    tabstop = 4,
    expandtab = true,
    smartindent = true,
    showtabline = 4,

    number = true,
    relativenumber = true,
    numberwidth = 4,
    
    fileencoding = "utf-8",
    
    hlsearch = false,
    incsearch = true,
    ignorecase = true,
    mouse = "a",
    cursorline = true,

    swapfile = false,
    backup = false,
    undodir = os.getenv("HOME") .. "/.vim/undodir",
    undofile = true,
    
    scrolloff = 8,
    sidescrolloff = 8,

    updatetime = 50,
    tm = 500,

    splitbelow = true,
    splitright = true,

    colorcolumn = "100",
    modifiable = true,
    acd = true,
    laststatus = 2,
    showmode = false, 
    termguicolors = true,
}

for option, value in pairs(options) do
    vim.opt[option] = value
end

vim.o.timeout = true
vim.o.timeoutlen = 300
