"-----------------------------------------------------------------------"
" Vundle 환경설정
"-----------------------------------------------------------------------"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'L9'
Plugin 'SrcExpl'
Plugin 'taglist.vim'
Plugin 'The-NERD-tree'
Plugin 'Trinity'
Plugin 'cscope_plus.vim'
Plugin 'ctrlp.vim'
"Plugin 'vimgrep.vim'
Plugin 'rking/ag.vim'
Plugin 'bufkill.vim'
Plugin 'vim-airline/vim-airline'




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


	
"-----------------------------------------------------------------------"
" ctags database path 설정 
"-----------------------------------------------------------------------"
	set tag=./tags;/


"-----------------------------------------------------------------------"
" cscope database path 설정 
"-----------------------------------------------------------------------"
	set csprg=/usr/bin/cscope
	set nocsverb
	set csverb
	set csto=0
	set cst
	
	
"-----------------------------------------------------------------------"
" Trinity 환경설정
"-----------------------------------------------------------------------"
" Open and close all the three plugins on the same time 
	nmap <F9>  :TrinityToggleAll<CR> 

" Open and close the Taglist separately 
	nmap <F6> :TrinityToggleTagList<CR> 

	" Open and close the Source Explorer separately 
	nmap <F7>  :TrinityToggleSourceExplorer<CR> 

" Open and close the NERD Tree separately 
	nmap <F8> :TrinityToggleNERDTree<CR> 



	
"-----------------------------------------------------------------------"
" Tag List 환경설정 
"-----------------------------------------------------------------------"
  "nmap <F6> :TlistToggle<CR>
	filetype on				" vim filetype on
	let Tlist_Ctags_Cmd = "/usr/bin/ctags"	" ctags 프로그램 위치
	let Tlist_Inc_Winwidth = 0		" window width change off
	let Tlist_Exit_OnlyWindow = 0		" tag/file 선택 완료 시 taglist
						" window close = off
	let Tlist_Auto_Open = 0			" vim 시작 시 window open
	let Tlist_Use_Right_Window = 1


"-----------------------------------------------------------------------"
" Source Explorer 환경설정
"-----------------------------------------------------------------------"
	"nmap <F7> :SrcExplToggle<CR>
	nmap <C-H> <C-W>h	
	nmap <C-J> <C-W>j
	nmap <C-K> <C-W>k
	nmap <C-L> <C-W>l

	let g:SrcExpl_winHeight = 8		" SrcExpl 윈도우 높이 지정
	let g:SrcExpl_refreshTime = 100		" refreshing time = 100ms
	let g:SrcExpl_jumpKey = "<ENTER>"		" 해당 definition으로 jump
	let g:SrcExpl_gobackKey = "<SPACE>"		" back
	let g:SrcExpl_isUpdateTags = 0		" tag file update = off
	let g:SrcExpl_pluginList = [ 
	         \"__Tag_List__", 
	         \"NERD_tree_",
	         \"NERD_tree_1",
	         \"NERD_tree_2",
	         \"ControlP",
           \"[Quickfix List]"
	         \]
	"let g:SrcExpl_prevDefKey = "<F3>" 
	"let g:SrcExpl_nextDefKey = "<F4>"

"-----------------------------------------------------------------------"
" NERDTree 환경설정
"-----------------------------------------------------------------------"
	let NERDTreeWinPos = "right"		" NERD Tree위치 = right


"-----------------------------------------------------------------------"
" CtrlP 환경설정
"-----------------------------------------------------------------------"
" 기본 무시 설정
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" 가장 가까운 .git 디렉토리를 cwd(현재 작업 디렉토리)로 사용
" 버전 관리를 사용하는 프로젝트를 할 때 꽤 적절하다.
" .svn, .hg, .bzr도 지원한다.
let g:ctrlp_working_path_mode = 'r'

" 단축키를 리더 키로 대체
nmap <leader>p :CtrlP<cr>

" 여러 모드를 위한 단축키
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>


"-----------------------------------------------------------------------"
" Ag 환경설정
"-----------------------------------------------------------------------"
let g:ag_prg="/usr/bin/ag --column"
let g:ag_working_path_mode="r"


"-----------------------------------------------------------------------"
" airline 환경설정
"-----------------------------------------------------------------------"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'


"-----------------------------------------------------------------------"
"vim 환경설정
"-----------------------------------------------------------------------"
	" 명령어 기록 갯수
	set hi=100

	" 백스페이스 사용
	set bs=indent,eol,start

	" 인코딩 설정
	"let &tenc=&enc
	"set enc=utf-8
	set fenc=utf-8
	set fencs=utf-8,cp949,cp932,euc-jp,shift-jis,big5,ucs-2le,latin1

	" 커서 위치 항상 보이기
	set ru

	" 완성중인 명령을 표시
	set sc

	" 줄번호 표시
	set nu

	" 줄 번호 표시 너비 설정
	set nuw=5

	" 탭 크기 설정
	set ts=2
	set sw=2

	" 탭 >> 공백 변환 사용안함
	set noet
	set sts=0

	" 자동 줄바꿈 안함
	set nowrap

	" 자동 들여쓰기
	set autoindent

	" C프로그래밍 자동 들여쓰기
	set cindent

	" magic 기능 사용
	set magic

	" 이동 동작시 줄의 시작으로 자동 이동
	set sol

	" 비쥬얼 모드 동작 설정
	set sel=exclusive

	" 괄호짝 찾기에서 <> 도 찾도록 추가
	set mps+=<:>

	" 새로 추가된 괄호 짝 보여주기
	"set sm

	" 검색어 강조
	set hls

	" 검색시 파일 끝에서 되돌리기 안함
	set nows

	" 검색시 대소문자 구별 안함
	set ic

	" 스마트한 대소문자 구별 기능 사용
	set scs

	" 항상 status 라인을 표시
	set ls=2

	" 커스텀 확장자들에게 파일 형식 설정
	"au BufRead,BufNewFile *.dic setl ft=php

	"파일 형식에 따른 신택스 하이라이팅 켜기
	sy enable

	"mouse
	set mouse=a

	"setting for airline
	set t_Co=256

	colorscheme pablo


	set softtabstop=4
	set tabstop=4
	set shiftwidth=4
	set expandtab

    set splitbelow

    set cursorline
