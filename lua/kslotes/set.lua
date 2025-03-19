vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOMEPATH") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.leader = " "

vim.opt.termguicolors = true

vim.g.colorscheme = 'onedark'

vim.diagnostic.config({
    virtual_text = true,  -- Muestra los errores en la línea
    signs = true,         -- Habilita los íconos en el lateral
    update_in_insert = false,
    severity_sort = true,
    float = {
        source = "always", -- Muestra de dónde viene el error
    },
})
