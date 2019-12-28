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

"colorscheme vj					

"colorscheme calmar256-dark		
"colorscheme calmar256-light		

set guifont=YaHei\ Monaco:h12
"DejaVu\ Sans\ Mono	" ����Ĭ������
"set guifont=Monaco:h10
"set guifont=Source\ Code\ Pro:h10
"set guifont=Arial_monospaced_for_SAP:h9:cANSI
"guifontwide
"set gfw=��Բ:h12:cGB2312

"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)\
                            " ������״̬����ʾ����Ϣ

" ��ʾTab��
"set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
"set list
"set listchars=tab:>-,trail:-  "TAB �ᱻ��ʾ�� ">---" ("-" �ĸ�������) ����β����Ŀհ��ַ���ʾ�� "-"��

"if has("gui_running")
"    set guioptions-=m " ���ز˵���
"    set guioptions-=T " ���ع�����
"    set guioptions-=L " ������������
"    set guioptions-=r " �����Ҳ������
"    set guioptions-=b " ���صײ�������
"    "set showtabline=0 " ����Tab Page��
"endif
"
"map <silent> <F10> :if &guioptions =~# 'T' <Bar>
"        \set guioptions-=T <Bar>
"        \set guioptions-=m <bar>
"        \set guioptions-=l <bar>
"        \set guioptions-=r <bar>
"    \else <Bar>
"        \set guioptions+=T <Bar>
"        \set guioptions+=m <Bar>
"        \set guioptions+=l <Bar>
"        \set guioptions+=r <Bar>
"    \endif<CR>
"set columns=84 lines=40
"
"" Alt-Space is System menu
"if has("gui")
"  noremap <M-Space> :simalt ~<CR>
"  inoremap <M-Space> <C-O>:simalt ~<CR>
"  cnoremap <M-Space> <C-C>:simalt ~<CR>
"endif
""����gVIMʱ���
"au GUIEnter * simalt ~x


"������������
set encoding=utf-8
"set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,default,gbk,chinese,cp936,big5
set ambiwidth=double
"if has("win32")
"    set fileencoding=chinese
"else
"    set fileencoding=utf-8
"endif
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

language messages en_US.utf-8

" ɾ��������β�ո�
":%s/[ \t\r]\+$//g<CR>


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

"motion & nav
"tab & window & buffer & mark
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>w <esc>gt
map <leader>q <esc>gT
map <leader>z :q<cr>
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
