set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

filetype off " required!
"set rtp+='c:\\Users\\Administrator\\vimfiles\\bundle\\Vundle.vim\\'
"let path='c:\\Users\\Administrator\\vimfiles\\bundle\\'
"set rtp+=c://vimfiles/bundle/Vundle.vim/
set rtp+=~/vimfiles/bundle/Vundle.vim/		
let path='~/vimfiles/bundle'
"for windows
call vundle#begin(path)
Plugin 'gmarik/Vundle.vim'
"相较于Command-T等查找文件的插件，ctrlp.vim最大的好处在于没有依赖，干净利落
Plugin 'ctrlp.vim'
"在输入()，""等需要配对的符号时，自动帮你补全剩余半个
Plugin 'AutoClose'
"神级插件，ZenCoding可以让你以一种神奇而无比爽快的感觉写HTML、CSS
Plugin 'ZenCoding.vim'
"在()、""、甚至HTML标签之间快速跳转；
Plugin 'matchit.zip'
"显示行末的空格；
"Plugin 'ShowTrailingWhitespace'
"JS代码格式化插件；
"Plugin '_jsbeautify'
"用全新的方式在文档中高效的移动光标，革命性的突破
Plugin 'EasyMotion'
"自动识别文件编码；
Plugin 'FencView.vim'
"必不可少，在VIM的编辑窗口树状显示文件目录
Plugin 'The-NERD-tree'
"NERD出品的快速给代码加注释插件，选中，`ctrl+h`即可注释多种语言代码；
Plugin 'The-NERD-Commenter'
"解放生产力的神器，简单配置，就可以按照自己的风格快速输入大段代码。
Plugin 'UltiSnips'
"让代码更加易于纵向排版，以=或,符号对齐
Plugin 'Tabular'
"迄今位置最好的自动VIM自动补全插件了吧
Plugin 'Valloric/YouCompleteMe'
Plugin 'FuzzyFinder'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'
call vundle#end()      

" 设置leader为,
let mapleader=","
let g:mapleader=","

set history=100
let g:LargeFile=5
"minimum size to be considered as a "LargeFile", in megabytes

if(has("win32") || has("win95") || has("win64") || has("win16")) "判定当前操作系统类型
    let g:iswindows=1
else
    let g:iswindows=0
endif

syntax on                   " 自动语法高亮

filetype plugin on			" 开启插件
filetype plugin indent on   " 开启插件

set showcmd					"
set relativenumber			"相对行数 快速跳转
set number                  " 显示行号
"set nocursorline            " 不突出显示当前行
set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4               " 设定 tab 长度为 4
set whichwrap=b,s,<,>,[,]	"当光标处于行首时用 <BS> 键可以回到前一行的结尾；当处于行尾时用 <Space>
							"键可以移动到下一行的行首。
set linebreak				"换行不断词
set mouse=a					"鼠标
set gcr=a:block-blinkon0
"gcr 是 guicursor 的简写，a 表示所有模式，冒号后面是对应模式下的行为参数，每个参数用 - 分隔，block 说明用块状光标，blinkon 表示亮起光标时长，时长为零表示禁用闪烁。也可以是 blinkoff0 或者 blinkwait0。具体参考 :help gcr

set backup
set backupext=.bak

set autochdir               " 自动切换当前目录为当前文件所在的目录
set backupcopy=yes          " 设置备份时的行为为覆盖

set ignorecase smartcase    " 搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
set nowrapscan              " 禁止在搜索到文件两端时重新搜索
set incsearch               " 输入搜索内容时就显示搜索结果
set hlsearch                " 搜索时高亮显示被找到的文本
set noerrorbells            " 关闭错误信息响铃
set novisualbell            " 关闭使用可视响铃代替呼叫
set t_vb=                   " 置空错误铃声的终端代码

set showmatch               " 插入括号时，短暂地跳转到匹配的对应括号
set matchtime=2             " 短暂跳转到匹配括号的时间
"set nowrap                  " 不自动换行
set magic      	            " 显示括号配对情况

set hidden                  " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set smartindent             " 开启新行时使用智能自动缩进
set backspace=indent,eol,start
                            " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1             " 设定命令行的行数为 1
set laststatus=2            " 显示状态栏 (默认值为 1, 无法显示状态栏)

"=================================
"FOLD
"=================================
"set foldenable              " 开始折叠
""set foldmethod=syntax       " 设置语法折叠
"set foldmethod=indent		" 设置代码折叠方式为 手工  indent
"set foldcolumn=0            " 设置折叠区域的宽度
"setlocal foldlevel=1        " 设置折叠层数为
""set foldclose=all           " 设置为自动关闭折叠,用于光标移出后，自动关闭折叠。
"set foldexpr=1				" 设置代码块折叠后显示的行数

"=================================
"VIEW
"=================================
"colorscheme default			
"colorscheme molokai			
"colorscheme rainbow_neon

syntax enable
set background=dark
"set background=light
"colorscheme solarized

colorscheme vj					

"colorscheme calmar256-dark		
"colorscheme calmar256-light		

set guifont=YaHei\ Monaco:h10
"DejaVu\ Sans\ Mono	" 设置默认字体
"set guifont=Monaco:h10
"set guifont=Source\ Code\ Pro:h10
"set guifont=Arial_monospaced_for_SAP:h9:cANSI
"guifontwide
"set gfw=幼圆:h12:cGB2312

set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)\
                            " 设置在状态行显示的信息

" 显示Tab符
"set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
"set list
"set listchars=tab:>-,trail:-  "TAB 会被显示成 ">---" ("-" 的个数不定) 而行尾多余的空白字符显示成 "-"。

if has("gui_running")
    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
    set guioptions-=L " 隐藏左侧滚动条
    set guioptions-=r " 隐藏右侧滚动条
    set guioptions-=b " 隐藏底部滚动条
    "set showtabline=0 " 隐藏Tab Page栏
endif

map <silent> <F10> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
        \set guioptions-=l <bar>
        \set guioptions-=r <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
        \set guioptions+=l <Bar>
        \set guioptions+=r <Bar>
    \endif<CR>
set columns=84 lines=40

" Alt-Space is System menu
if has("gui")
  noremap <M-Space> :simalt ~<CR>
  inoremap <M-Space> <C-O>:simalt ~<CR>
  cnoremap <M-Space> <C-C>:simalt ~<CR>
endif
"启动gVIM时最大化
au GUIEnter * simalt ~x


"编码字体设置
set encoding=utf-8
"set termencoding=utf-8
set fileencodings=utf-8,gbk
"set fileencodings=ucs-bom,utf-8,default,chinese,cp936,big5
set ambiwidth=double
if has("win32")
    set fileencoding=chinese
else
    set fileencoding=utf-8
endif
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

language messages zh_CN.utf-8


" 删除所有行尾空格
":%s/[ \t\r]\+$//g<CR>

set diffexpr=MyDiff()
function! MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"映射回卷行的上下移动
map <Up> gk
map <Down> gj

noremap! <M-j> <Down>
noremap! <M-k> <Up>
noremap! <M-h> <Left>
noremap! <M-l> <Right>
noremap! <M-a> <Home>
noremap! <M-e> <End>
noremap! <M-w> <C-Left>
noremap! <M-b> <C-Right>

"ctags cscope 插件
set tags=D:\VimTags
map <C-f3>~ :call Do_CsTag()<CR>
nmap <C-F3>s :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-F3>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-F3>c :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-F3>t :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-F3>e :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-F3>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
nmap <C-F3>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:copen<CR>
nmap <C-F3>d :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>
function! Do_CsTag()
    let dir = getcwd()
    if filereadable("tags")
        if(g:iswindows==1)
            let tagsdeleted=delete(dir."\\"."tags")
        else
            let tagsdeleted=delete("./"."tags")
        endif
        if(tagsdeleted!=0)
            echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
            return
        endif
    endif
    if has("cscope")
        silent! execute "cs kill -1"
    endif
    if filereadable("cscope.files")
        if(g:iswindows==1)
            let csfilesdeleted=delete(dir."\\"."cscope.files")
        else
            let csfilesdeleted=delete("./"."cscope.files")
        endif
        if(csfilesdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
            return
        endif
    endif
    if flereadable("cscope.out")
        if(g:iswindows==1)
            let csoutdeleted=delete(dir."\\"."cscope.out")
        else
            let csoutdeleted=delete("./"."cscope.out")
        endif
        if(csoutdeleted!=0)
            echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
            return
        endif
    endif
    if(executable('ctags'))
        "silent! execute "!ctags -R --c-types=+p --fields=+S *"
        silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
    endif
    if(executable('cscope') && has("cscope") )
        if(g:iswindows!=1)
            silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' > cscope.files"
        else
            silent! execute "!dir /s/b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
        endif
        silent! execute "!cscope -b"
        execute "normal :"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
endfunction


"自动补全命令时候使用菜单式匹配列表  
set wildmenu
set completeopt=longest,menu
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complet

"Taglist 插件使用
map <F3> :silent! Tlist<CR>"启用taglist
map <F4> :!ctags -R --fields=+lS<CR>
nnoremap <silent> <F7> :TlistToggle<CR>

let Tlist_Ctags_Cmd='ctags'			"环境变量
let Tlist_Use_Right_Window=0		"窗口显示于右边
let Tlist_Show_One_File=1 "让taglist可以同时展示多个文件的函数列表，如果想只有1个，设置为1
"let Tlist_File_Fold_Auto_Close=1	"非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1			"当taglist是最后一个分割窗口时，自动推出vim
"是否一直处理tags.1:处理;0:不处理
let Tlist_Process_File_Always=1		"不是一直实时更新tags，因为没有必要
let Tlist_Inc_Winwidth=0
let Tlist_JS_Settings = 'javascript;s:string;a:array;o:object;f:function'

"motion & nav
"tab & window & buffer & mark
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <c-tab> <esc>gt
map <c-s-tab> <esc>gT

"fuffinder.vim
"key map
map <M-b> <esc>:FufBuffer<cr>
map <M-f> <esc>:FufFile<cr>
"map <M-o>f <esc>:FufMruFile<cr>
"map <M-o>c <esc>:FufMruCmd<cr>
map <M-o>j <esc>:FufJumpList<cr>
map <f1> <ESC>:FufHelp 

"mru.vim
map <M-o>f <esc>:MRU<cr>
"buf explorer.vim
map <M-o>b <esc>:bufexplorer<cr>

"winmanager.vim
"map <c-w><c-f> :FirstExplorerWindow<cr>
"map <c-w><c-b> :BottomExplorerWindow<cr>
"map <c-w><c-t> :WMToggle<cr> 

"map <F5> :ls<cr>:e #
map <F6> :NERDTree<CR>

nnoremap <silent> <F11> :YRShow<CR>
"miniBufExpl
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1 

"编辑vim配置文件
if has('unix')
    set fileformats=unix,dos,mac
    nmap <Leader>e :tabnew $HOME/.vimrc<CR>
    let $VIMFILES = $HOME.'/.vim'
else
    set fileformats=dos,unix,mac
    nmap <Leader>e :tabnew $VIM/_vimrc<CR>
    let $VIMFILES = $VIM.'/vimfiles'
endif

"map <leader>w <ESC>:w<CR>
"map <leader>aa <ESC>ggVG"+y

map <f2> "+y
"vmap <f2> "+y
map <C-f2> <ESC>"+p
map <S-f2> <ESC>"+P
map <C-S-f2> <ESC>"+P

map <c-f4> <ESC>:q<cr>

map <f9> <esc>:ConqueTerm e:\cygwin64\bin\bash.exe

"--------------------------------------------------
" block comment
"-------------------------------------------------- 
noremap <silent> .c :call Comment()<CR>
noremap <silent> .C :call UnComment()<CR>


"show mark.vim 
"default on
"Default keymappings are:
"  <Leader>mt  - Toggles ShowMarks on and off.
"  <Leader>mo  - Turns ShowMarks on, and displays marks.
"  <Leader>mh  - Clears a mark.
"  <Leader>ma  - Clears all marks.
"  <Leader>mm  - Places the next available mark.

"CtrlP

map <f5> <esc>:CtrlPMixed<CR>
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlPMixed'

"Exclude files or directories using Vim's wildignore:
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
