" =============================================
" 基本設定
" =============================================
set nocompatible      " Vi互換モードを無効化
set encoding=utf-8    " UTF-8エンコーディング
set fileencoding=utf-8
set backspace=indent,eol,start  " バックスペースで削除可能に

" =============================================
" 表示設定
" =============================================
set number            " 行番号を表示
set relativenumber    " 相対行番号を表示
set cursorline        " カーソル行をハイライト
set showmatch         " 括弧の対応を表示
set ruler             " ステータスラインにカーソル位置を表示
set list              " 不可視文字を表示
set listchars=tab:▸\ ,trail:▫ " 不可視文字の表示設定
set wrap              " テキストを折り返し

" =============================================
" 検索設定
" =============================================
set ignorecase        " 大文字小文字を区別しない
set smartcase         " 大文字が含まれている場合は区別
set incsearch         " インクリメンタルサーチを有効化
set hlsearch          " 検索結果をハイライト

" =============================================
" インデント設定
" =============================================
set tabstop=4         " タブ幅を4スペースに
set shiftwidth=4      " 自動インデント時の幅
set expandtab         " タブをスペースに変換

" =============================================
" ステータスライン
" =============================================
set laststatus=2      " ステータスラインを常に表示
set showcmd           " 入力中のコマンドを表示
set cmdheight=2       " コマンドラインの高さを2行に
set wildmenu          " コマンド補完を有効化
set wildmode=longest,list,full

" =============================================
" カラースキーム & UI
" =============================================
syntax on             " シンタックスハイライトを有効化
set background=dark   " ダークテーマ
colorscheme desert    " カラースキームを設定

" =============================================
" ファイル操作
" =============================================
set autoread          " ファイル変更を自動読み込み
set nobackup          " バックアップファイルを作らない
set nowritebackup     " 書き込み時のバックアップを作らない
set noswapfile        " スワップファイルを作らない

" =============================================
" キーマッピング
" =============================================
nnoremap <C-s> :w<CR> " Ctrl+s で保存
nnoremap <C-q> :q<CR> " Ctrl+q で終了
nnoremap <C-a> ggVG   " Ctrl+a で全選択
nnoremap <C-f> /      " Ctrl+f で検索
