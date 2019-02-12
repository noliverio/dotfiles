:colorscheme desert
:set number
:set cursorline
:syntax on

"Seach options enable highlighting and incremental search
:set hlsearch incsearch

"Settings for tab use four spaces for tab, and use smart indenting
:set expandtab tabstop=4 shiftwidth=4 smartindent 

"Settings for folding, open with inner two nested folds closed, save folds on write, load folds on read, fold based on syntax or indentation if no syntax file availiable 


:set foldlevelstart=2
autocmd BufWritePre *.* mkview!
autocmd BufRead *.* silent loadview

" Enable filetype plugin for vim-go
:filetype plugin on
