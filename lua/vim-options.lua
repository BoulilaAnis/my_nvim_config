vim.cmd(":set relativenumber number")
-- spaces
vim.cmd(":set tabstop	 =4")
vim.cmd(":set shiftwidth  =4")
vim.cmd(":set softtabstop =4")
vim.cmd(":set textwidth   =79")
vim.cmd(":set autoindent")
vim.cmd(":set expandtab")

-- matching
vim.cmd(":set showmatch")

vim.cmd(":set smarttab")
vim.cmd(":set mouse=a")
vim.cmd(":set bg=dark")

-- search
vim.cmd(":set hlsearch")
vim.cmd(":set incsearch")
vim.cmd(":set ignorecase")
vim.cmd(":set smartcase")

vim.cmd(":set wildmenu")
vim.cmd(":set wildmode=longest,list,full")
vim.cmd(":set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx")

-- cursor
vim.cmd(":set guicursor=a:block")
vim.cmd(":set cursorline")
vim.cmd(":highlight Cursorline cterm=bold ctermbg=black")

    
vim.cmd(":set splitbelow splitright")




vim.g.mapleader = " "
vim.g.background = "dark"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true


-- runn python script
vim.cmd([[
  autocmd FileType python nnoremap <buffer> <leader>r :w<CR>:belowright split term://python3 %<CR>:resize 10<CR>
]])


-- Open terminal in below split
vim.api.nvim_set_keymap('n', '<Leader>t', ':belowright split term://$SHELL<CR>:resize 10<CR>', { noremap = true, silent = true })

-- replace
vim.cmd([[nnoremap S :%s//g<left><left>]])
