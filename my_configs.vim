set relativenumber			"相对行数 快速跳转
set number                  " 显示行号
"set nocursorline            " 不突出显示当前行
set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4           " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4               " 设定 tab 长度为 4
set whichwrap=b,s,<,>,[,]	"当光标处于行首时用 <BS> 键可以回到前一行的结尾；当处于行尾时用 <Space>
							"键可以移动到下一行的行首。
set linebreak				"换行不断词

let g:ctrlp_map = '<c-p>'
map <leader>nn :NERDTreeToggle<cr
map <leader>g :Ack
let g:loaded_comfortable_motion = 0

nnoremap <c-f> <PageDown>
nnoremap <c-b> <PageUp>
colorscheme desert

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
