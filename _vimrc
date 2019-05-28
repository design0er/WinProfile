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
"�����Command-T�Ȳ����ļ��Ĳ����ctrlp.vim���ĺô�����û���������ɾ�����
Plugin 'ctrlp.vim'
"������()��""����Ҫ��Եķ���ʱ���Զ����㲹ȫʣ����
Plugin 'AutoClose'
"�񼶲����ZenCoding����������һ��������ޱ�ˬ��ĸо�дHTML��CSS
Plugin 'ZenCoding.vim'
"��()��""������HTML��ǩ֮�������ת��
Plugin 'matchit.zip'
"��ʾ��ĩ�Ŀո�
"Plugin 'ShowTrailingWhitespace'
"JS�����ʽ�������
"Plugin '_jsbeautify'
"��ȫ�µķ�ʽ���ĵ��и�Ч���ƶ���꣬�����Ե�ͻ��
Plugin 'EasyMotion'
"�Զ�ʶ���ļ����룻
Plugin 'FencView.vim'
"�ز����٣���VIM�ı༭������״��ʾ�ļ�Ŀ¼
Plugin 'The-NERD-tree'
"NERD��Ʒ�Ŀ��ٸ������ע�Ͳ����ѡ�У�`ctrl+h`����ע�Ͷ������Դ��룻
Plugin 'The-NERD-Commenter'
"����������������������ã��Ϳ��԰����Լ��ķ����������δ��롣
Plugin 'UltiSnips'
"�ô���������������Ű棬��=��,���Ŷ���
Plugin 'Tabular'
"����λ����õ��Զ�VIM�Զ���ȫ����˰�
Plugin 'Valloric/YouCompleteMe'
Plugin 'FuzzyFinder'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-powerline'
call vundle#end()      

" ����leaderΪ,
let mapleader=","
let g:mapleader=","

set history=100
let g:LargeFile=5
"minimum size to be considered as a "LargeFile", in megabytes

if(has("win32") || has("win95") || has("win64") || has("win16")) "�ж���ǰ����ϵͳ����
    let g:iswindows=1
else
    let g:iswindows=0
endif

syntax on                   " �Զ��﷨����

filetype plugin on			" �������
filetype plugin indent on   " �������

set showcmd					"
set relativenumber			"������� ������ת
set number                  " ��ʾ�к�
"set nocursorline            " ��ͻ����ʾ��ǰ��
set shiftwidth=4            " �趨 << �� >> �����ƶ�ʱ�Ŀ��Ϊ 4
set softtabstop=4           " ʹ�ð��˸��ʱ����һ��ɾ�� 4 ���ո�
set tabstop=4               " �趨 tab ����Ϊ 4
set whichwrap=b,s,<,>,[,]	"����괦������ʱ�� <BS> �����Իص�ǰһ�еĽ�β����������βʱ�� <Space>
							"�������ƶ�����һ�е����ס�
set linebreak				"���в��ϴ�
set mouse=a					"���
set gcr=a:block-blinkon0
"gcr �� guicursor �ļ�д��a ��ʾ����ģʽ��ð�ź����Ƕ�Ӧģʽ�µ���Ϊ������ÿ�������� - �ָ���block ˵���ÿ�״��꣬blinkon ��ʾ������ʱ����ʱ��Ϊ���ʾ������˸��Ҳ������ blinkoff0 ���� blinkwait0������ο� :help gcr

set backup
set backupext=.bak

set autochdir               " �Զ��л���ǰĿ¼Ϊ��ǰ�ļ����ڵ�Ŀ¼
set backupcopy=yes          " ���ñ���ʱ����ΪΪ����

set ignorecase smartcase    " ����ʱ���Դ�Сд��������һ�������ϴ�д��ĸʱ�Դ�Сд����
set nowrapscan              " ��ֹ���������ļ�����ʱ��������
set incsearch               " ������������ʱ����ʾ�������
set hlsearch                " ����ʱ������ʾ���ҵ����ı�
set noerrorbells            " �رմ�����Ϣ����
set novisualbell            " �ر�ʹ�ÿ�������������
set t_vb=                   " �ÿմ����������ն˴���

set showmatch               " ��������ʱ�����ݵ���ת��ƥ��Ķ�Ӧ����
set matchtime=2             " ������ת��ƥ�����ŵ�ʱ��
"set nowrap                  " ���Զ�����
set magic      	            " ��ʾ����������

set hidden                  " ��������δ������޸�ʱ�л�����������ʱ���޸��� vim ���𱣴�
set smartindent             " ��������ʱʹ�������Զ�����
set backspace=indent,eol,start
                            " ���趨�ڲ���״̬�޷����˸���� Delete ��ɾ���س���
set cmdheight=1             " �趨�����е�����Ϊ 1
set laststatus=2            " ��ʾ״̬�� (Ĭ��ֵΪ 1, �޷���ʾ״̬��)

"=================================
"FOLD
"=================================
"set foldenable              " ��ʼ�۵�
""set foldmethod=syntax       " �����﷨�۵�
"set foldmethod=indent		" ���ô����۵���ʽΪ �ֹ�  indent
"set foldcolumn=0            " �����۵�����Ŀ��
"setlocal foldlevel=1        " �����۵�����Ϊ
""set foldclose=all           " ����Ϊ�Զ��ر��۵�,���ڹ���Ƴ����Զ��ر��۵���
"set foldexpr=1				" ���ô�����۵�����ʾ������

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
"DejaVu\ Sans\ Mono	" ����Ĭ������
"set guifont=Monaco:h10
"set guifont=Source\ Code\ Pro:h10
"set guifont=Arial_monospaced_for_SAP:h9:cANSI
"guifontwide
"set gfw=��Բ:h12:cGB2312

set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)\
                            " ������״̬����ʾ����Ϣ

" ��ʾTab��
"set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
"set list
"set listchars=tab:>-,trail:-  "TAB �ᱻ��ʾ�� ">---" ("-" �ĸ�������) ����β����Ŀհ��ַ���ʾ�� "-"��

if has("gui_running")
    set guioptions-=m " ���ز˵���
    set guioptions-=T " ���ع�����
    set guioptions-=L " ������������
    set guioptions-=r " �����Ҳ������
    set guioptions-=b " ���صײ�������
    "set showtabline=0 " ����Tab Page��
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
"����gVIMʱ���
au GUIEnter * simalt ~x


"������������
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


" ɾ��������β�ո�
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

"ӳ��ؾ��е������ƶ�
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

"ctags cscope ���
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


"�Զ���ȫ����ʱ��ʹ�ò˵�ʽƥ���б�  
set wildmenu
set completeopt=longest,menu
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complet

"Taglist ���ʹ��
map <F3> :silent! Tlist<CR>"����taglist
map <F4> :!ctags -R --fields=+lS<CR>
nnoremap <silent> <F7> :TlistToggle<CR>

let Tlist_Ctags_Cmd='ctags'			"��������
let Tlist_Use_Right_Window=0		"������ʾ���ұ�
let Tlist_Show_One_File=1 "��taglist����ͬʱչʾ����ļ��ĺ����б������ֻ��1��������Ϊ1
"let Tlist_File_Fold_Auto_Close=1	"�ǵ�ǰ�ļ��������б��۵�����
let Tlist_Exit_OnlyWindow=1			"��taglist�����һ���ָ��ʱ���Զ��Ƴ�vim
"�Ƿ�һֱ����tags.1:����;0:������
let Tlist_Process_File_Always=1		"����һֱʵʱ����tags����Ϊû�б�Ҫ
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

"�༭vim�����ļ�
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
