vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>m", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>n", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>n", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "gl", "<cmd>diffget //3<CR>")

vim.keymap.set("n", "<leader>n", "<cmd>lprev<CR>zz")
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function (e)
        vim.bo[e.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
        local opts = { buffer = e.buf }
        vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set('n', '<space>rn', function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, opts)
        vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
        vim.keymap.set('n', '<space>f',
        function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end
})
