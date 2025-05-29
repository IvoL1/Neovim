vim.g.mapleader = ' ' -- define "líder" como espaço
vim.g.maplocalleader = ' ' -- idem para local

local opts = { noremap = true, silent = true } -- padrão para evitar loops e silenciar

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true }) -- desativa espaço

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true }) -- move em linha quebrada
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set('n', '<Esc>', ':noh<CR>', opts) -- limpa destaque busca

vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts) -- salvar

vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts) -- sair

vim.keymap.set('n', '<C-d>', '<C-d>zz', opts) -- scroll e centraliza
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

vim.keymap.set('n', 'n', 'nzzzv') -- busca e centraliza
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts) -- navega splits
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

vim.keymap.set('i', 'jk', '<ESC>', opts) -- sai do modo inserção rápido
vim.keymap.set('i', 'kj', '<ESC>', opts)

vim.keymap.set('v', '<', '<gv', opts) -- mantém seleção ao indentar
vim.keymap.set('v', '>', '>gv', opts)

vim.keymap.set('v', 'p', '"_dP', opts) -- cola sem sobrescrever yank

vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]]) -- copia pro clipboard
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' }) -- navega diagnósticos
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

