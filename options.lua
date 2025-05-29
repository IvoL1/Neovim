-- init.lua básico mínimo

vim.o.number = true -- mostra número das linhas
vim.o.mouse = 'a' -- ativa uso do mouse
vim.o.clipboard = 'unnamedplus' -- integra o clipboard do SO
vim.o.undofile = true -- mantém histórico de desfazer
vim.o.ignorecase = true -- busca sem diferenciar maiúsculas
vim.o.smartcase = true -- se usar maiúscula, diferencia na busca
vim.o.signcolumn = 'yes' -- sempre mostra coluna de sinais
vim.o.updatetime = 250 -- tempo menor pra atualizações
vim.o.completeopt = 'menuone,noselect' -- melhora autocomplete
vim.opt.termguicolors = true -- ativa cores melhores
vim.o.wrap = false -- não quebra linhas automaticamente
vim.o.scrolloff = 4 -- mantém linhas acima/abaixo visíveis
vim.o.sidescrolloff = 8 -- mantém colunas laterais visíveis
vim.o.relativenumber = true -- numeração relativa das linhas
vim.o.shiftwidth = 4 -- indentação: 4 espaços
vim.o.tabstop = 4 -- tab = 4 espaços
vim.o.softtabstop = 4 -- ajuste de tab na edição
vim.o.expandtab = true -- tab vira espaços
vim.o.smartindent = true -- indentação inteligente
vim.o.autoindent = true -- mantém indentação da linha anterior
vim.o.fileencoding = 'utf-8' -- salva arquivos em utf-8
vim.o.cmdheight = 1 -- altura da linha de comandos
vim.opt.shortmess:append 'c' -- menos mensagens chatas
vim.opt.iskeyword:append '-' -- trata palavras com hífen como uma só
vim.opt.formatoptions:remove { 'c', 'r', 'o' } -- evita inserir comentários automáticos
vim.opt.runtimepath:remove '/usr/share/vim/vimfiles' -- separa plugins do vim e nvim


