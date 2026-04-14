" or also, https://github.com/nvim-lualine/lualine.nvim, not added because didnt feel right



" https://www.youtube.com/watch?v=-AIdjwIGfqM
" https://www.chiarulli.me/Neovim/05-vim-airline/

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" cycle through buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1


" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
" base16_gruvbox_dark_hard
" base16_gruvbox_dark_medium
" base16_gruvbox_dark_pale
" base16_gruvbox_dark_soft
let g:airline_theme = 'base16_gruvbox_dark_medium'
" https://superuser.com/questions/1341049/how-to-use-gruvbox-airline-theme

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode

" FIX:
" function! LspServerName()
"   let l:servers = luaeval('vim.lsp.get_clients({bufnr=vim.api.nvim_get_current_buf()})')
"   if empty(l:servers)
"     return "none"
"   endif
"   return "".join(map(l:servers, 'v:val.name'), ", ")
" endfunction
" let g:airline_section_x = '%#__accent_bold#%{LspServerName()}   %{&filetype}'

