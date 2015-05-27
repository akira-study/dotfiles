"---------基本設定--------
" vim互換にしない
set nocompatible

"シンタックスハイライトを有効にする
syntax on

" 自動再読込
set autoread

" タブ
set tabstop=4
set expandtab
set shiftwidth=4
set smarttab

" インデント
set smartindent
set autoindent

"括弧の対応
set showmatch

"OSのクリップボード使用
set clipboard+=unnamed

"括弧補完
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>

" カラースキーム
colorscheme hybrid

"-------- Java --------
set sm
	set ai
	syntax on
	let java_highlight_all=1
	let java_highlight_functions="style"
	let java_allow_cpp_keywords=1

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
 
" NERDTreeを設定                 
NeoBundle 'scrooloose/nerdtree'

"autoclose
NeoBundle 'Townk/vim-autoclose' 

"syntastic
NeoBundle 'scrooloose/syntastic'
call neobundle#end()
 
" Required:
filetype plugin indent on
 
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
" NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"------------------------
