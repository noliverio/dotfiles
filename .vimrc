:colorscheme desert
:set number
:set cursorline
:syntax on

"Seach options enable highlighting and incremental search
:set hlsearch incsearch

"Settings for tab use four spaces for tab, and use smart indenting
:set expandtab tabstop=4 shiftwidth=4 smartindent 

"Load plugins based on filetype
:filetype plugin indent on

"Settings for folding, open with inner two nested folds closed, save folds on write, load folds on read, fold based on syntax or indentation if no syntax file availiable 

:set foldlevelstart=2
autocmd BufWritePre *.* mkview!
autocmd BufRead *.* silent loadview

" Enable filetype based plugins
:filetype plugin on

"Vim-Terraform specific settings. 
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1

