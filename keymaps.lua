vim.keymap.set("n", "<leader>w", ":w<CR>") -- salva arquivo com <space>

vim.keymap.set("n", "<leader>q", ":q<CR>") -- fecha com <space>

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- abre/fecha explorador

vim.keymap.set("i", "jj", "<Esc>") -- digitar 'jj' sai do modo insert

vim.keymap.set("v", "<leader>y", '"+y') -- copia visual para clipboarddo sistema

vim.keymap.set("n", "<leader>t", ":term<CR>")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
