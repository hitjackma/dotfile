syn on                      "语法支持

"common conf {{             通用配置
set autoindent              "自动缩进
set bs=2                    "在insert模式下用退格键删除
set showmatch               "代码匹配
set laststatus=2            "总是显示状态行
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set number                  "显示行号
set autoread                "文件在Vim之外修改过，自动重新读入
set smarttab
set mouse=a
set smartindent
set enc=utf-8
set ignorecase              "检索时忽略大小写
set fileencodings=utf-8,gbk "使用utf-8或gbk打开文件
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
"set foldmethod=syntax       "代码折叠
"}}

" conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

"conf for plugins {{ 插件相关的配置
"状态栏的配置 
"powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
"}


"execute pathogen#infect()
"}}

"Smart way to move between windows 分屏窗口移动  
map <C-j> <C-W>j  
map <C-k> <C-W>k  
map <C-h> <C-W>h  
map <C-l> <C-W>l
