-- Disable plugins (TO-DO: rearrange)

vim.g.loaded_vimtex = 1
vim.g.vimtex_enabled = 1

require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.indentline"
require "user.alpha"
require "user.whichkey"
require "user.autocommands"

-- TO-DO: rearrange

vim.cmd([[
	set nocompatible            " disable compatibility to old-time vi
	set showmatch               " show matching 
	set ignorecase              " case insensitive 
	set mouse=v                 " middle-click paste with 
	set hlsearch                " highlight search 
	set incsearch               " incremental search
	set tabstop=4               " number of columns occupied by a tab 
	set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
	set expandtab               " converts tabs to white space
	set shiftwidth=4            " width for autoindents
	set autoindent              " indent a new line the same amount as the line just typed
	set number                  " add line numbers
	set wildmode=longest,list   " get bash-like tab completions
	set cc=100                  " set an 80 column border for good coding style
	filetype plugin indent on   " allow auto-indenting depending on file type
	syntax on                   " syntax highlighting
	set mouse=a                 " enable mouse click
	set clipboard=unnamedplus   " using system clipboard
	filetype plugin on
	set cursorline              " highlight current cursorline
	set ttyfast                 " Speed up scrolling in Vim
	set spell spelllang=es_es,en_us                   " enable spell check (may need to download language package)
	set smarttab			    " smarttab

	set cindent
	set tw=110 					"width of document                                                                            
	set fo+=t  

	se ruler				    " show columns
	set rulerformat=%l,%v

	"set lines=100				" window size
	"set columns=90				

	" set noswapfile             " disable creating swap file
	" set backupdir=~/.cache/vim " Directory to store backup files.
	
	set mouse=a
	source $VIMRUNTIME/mswin.vim
]])

-- Autocmd

vim.cmd('autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="line"})')
vim.cmd('autocmd! BufNew,BufRead *.tex silent! VimtexCompile')

-- Snippets

if vim.fn.exists('opt:UltiSnipsListSnippets') ~= 0 then
	vim.opt.UltiSnipsListSnippets = "<C-q>"
	vim.opt.UltiSnipsExpandTrigger = "<Tab>"
	vim.opt.UltiSnipsJumpForwardTrigger = "<C-j>"
	vim.opt.UltiSnipsJumpBackwardTrigger = "<C-k>"
	vim.opt.UltiSnipsSnippetsDir = 'UltiSnips'
	vim.opt.UltiSnipsSnippetDirectories = {'UltiSnips'}
	vim.opt.UltiSnipsEnableSnipMate = 0
end

-- Neovide

if vim.fn.exists("g:neovide") then
	vim.g.neovide_confirm_quit = 1
	vim.g.neovide_cursor_animation_length = 0
	vim.g.neovide_scroll_animation_length = 0
end

-- Keys

vim.api.nvim_set_keymap('i', '<C-Right>', '<Esc>we<Insert>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-Left>', '<Esc>b<Insert>', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-y>', '<Esc>:redo<CR>', {noremap = true})
--vim.api.nvim_set_keymap('i', '<M-`>', '`', {noremap = true})
vim.api.nvim_set_keymap('i', '<C-S>', '<Esc>:w<CR>a', {noremap = false})
vim.api.nvim_set_keymap('n', '<C-S>', '<Esc>:w<CR>', {noremap = false})
vim.api.nvim_set_keymap('i', '<TAB>', '<CT>', {noremap = false})