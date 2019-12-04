" Name:         hashpunk
" Author:       abnt713
" Maintainer:   abnt713
" License:      MIT

highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'hashpunk'
set background=dark

" Dark Meadow Legacy
let s:clear           =  'NONE'
let s:DarkMagenta     =  '90'
let s:Purple4         =  '55'
let s:SkyBlue1        =  '117'
let s:Magenta2        =  '165'
let s:MediumOrchid1   =  '207'

let s:Yellow1         = '185'
let s:Green1          = '34'
let s:Red1            = '196'
let s:Orange1         = '209'

" Hashpunk
let s:MainColor = '220'
let s:ComplementaryColor = '178'

let s:Grey0 = '16'
let s:Grey7 = '233'
let s:Grey15 = '235'
let s:Grey19 = '236'
let s:Grey42 = '242'
let s:Grey54 = '245'
let s:Grey66 = '248'
let s:Grey74 = '250'
let s:Grey93 = '255'



" Text style 
let s:italic      =   'italic'
let s:bold        =   'bold'
let s:underline   =   'underline'
let s:none        =   'NONE'

" Helper function to set up highlight executions
function! s:highlight(group, fg, bg, style)
  exec  "highlight "  . a:group
    \ . " ctermfg="   . a:fg
    \ . " ctermbg="   . a:bg
    \ . " cterm="     . a:style
endfunction

" Syntax highlighting groups
"
" For reference on what each group does, please refer to this:
" vimdoc.sourceforge.net/htmldoc/syntax.html
"
call s:highlight('Comment', s:Grey42, s:clear, s:italic)
call s:highlight('Constant', s:MainColor, s:clear, s:none)
call s:highlight('String', s:Green1, s:clear, s:none)
call s:highlight('Character', s:Red1, s:clear, s:none)
call s:highlight('Number', s:Red1, s:clear, s:none)      
call s:highlight('Boolean', s:Red1, s:clear, s:none)
call s:highlight('Float', s:Red1, s:clear, s:none)

call s:highlight('Identifier', s:Grey66, s:clear, s:none)
call s:highlight('Function', s:MainColor, s:clear, s:none)

call s:highlight('Statement', s:MainColor, s:clear, s:bold)
call s:highlight('Conditional', s:MainColor, s:clear, s:bold)
call s:highlight('Repeat', s:MainColor, s:clear, s:bold)
call s:highlight('Label', s:MainColor, s:clear, s:bold)       
call s:highlight('Operator', s:Red1, s:clear, s:none)
call s:highlight('Keyword', s:MainColor, s:clear, s:none)
call s:highlight('Exception', s:MainColor, s:clear, s:italic)

call s:highlight('PreProc', s:Grey54, s:clear, s:italic)
call s:highlight('Include', s:Grey74, s:clear, s:italic)
call s:highlight('Define', s:Grey66, s:clear, s:italic)
call s:highlight('Macro', s:Grey66, s:clear, s:italic)
call s:highlight('PreCondit', s:MainColor, s:clear, s:italic)

call s:highlight('Type', s:MainColor, s:clear, s:italic)
call s:highlight('StorageClass', s:MainColor, s:clear, s:bold)
call s:highlight('Structure', s:MainColor, s:clear, s:bold)
call s:highlight('Typedef', s:MainColor, s:clear, s:bold)

call s:highlight('Special', s:Grey66, s:clear, s:none)
call s:highlight('SpecialChar', s:MainColor, s:clear, s:none)
call s:highlight('Delimiter', s:MainColor, s:clear, s:none)
call s:highlight('SpecialComment', s:Grey54, s:clear, s:none)
call s:highlight('Debug', s:MainColor, s:clear, s:none)
"call s:highlight('Underlined', s:Grey54, s:clear, s:underline)
call s:highlight('Error', s:Red1, s:clear, s:underline)
call s:highlight('Todo', s:Red1, s:clear, s:none)

call s:highlight('Directory', s:Grey93, s:clear, s:bold)
"call s:highlight('CursorLine', s:MainColor, s:clear, s:bold)
call s:highlight('MatchParen', s:MainColor, s:Grey93, s:none)
"call s:highlight('ColorColumn', s:MainColor, s:Grey15, s:none)


" Interface highlighting
"call s:highlight('Normal', s:Grey93, s:Grey15, s:none)
"call s:highlight('Visual', s:clear, s:Grey0, s:none)
"call s:highlight('Cursor', s:clear, s:Grey0, s:none)
"call s:highlight('iCursor', s:clear, s:Grey0, s:none)
"call s:highlight('LineNr', s:Grey66, s:clear, s:none)
"call s:highlight('NonText', s:Grey66, s:clear, s:none)
"call s:highlight('CursorLineNr', s:Grey0, s:Grey7, s:none)
"call s:highlight('VertSplit', s:Grey15, s:clear, s:none)

" Pmenu
call s:highlight('Pmenu', s:Grey93, s:Grey19, s:none)
call s:highlight('PmenuSel', s:MainColor, s:Grey15, s:none)

" Search
call s:highlight('Search', s:Grey93, s:MainColor, s:none)

" GitDiff 
call s:highlight('DiffAdd', s:MainColor, s:Grey93, s:none)
call s:highlight('DiffChange', s:Grey7, s:Grey93, s:none)
call s:highlight('DiffText', s:MainColor, s:Grey74, s:none)
call s:highlight('DiffDelete', s:Grey0, s:MainColor, s:none)

" Git Gutter
call s:highlight('GitGutterAdd', s:Grey93, s:clear, s:none)
call s:highlight('GitGutterChange', s:Grey93, s:clear, s:none)
call s:highlight('GitGutterDelete', s:Grey93, s:clear, s:none)
call s:highlight('GitGutterChangeDelete', s:Grey93, s:clear, s:none)
call s:highlight('SignColumn', s:Grey93, s:clear, s:none)

" CPP
call s:highlight('cppStructure', s:MainColor, s:clear, s:none)
call s:highlight('cppStatement', s:MainColor, s:clear, s:none)
call s:highlight('cType', s:MainColor, s:clear, s:none)
call s:highlight('cRepeat', s:MainColor, s:clear, s:none)
call s:highlight('cppSTLtype', s:MainColor, s:clear, s:none)


" Java syntax highlighting
call s:highlight('javaParen', s:MainColor, s:clear, s:none)
call s:highlight('javaCommentTitle', s:Grey42, s:clear, s:none)
call s:highlight('javaDocParam', s:MainColor, s:clear, s:none)
call s:highlight('javaDocTags', s:Grey54, s:clear, s:none)
call s:highlight('javaScopeDecl', s:Grey54, s:clear, s:none)
call s:highlight('javaStorageClass', s:MainColor, s:clear, s:none)


" Python syntax highlighting
call s:highlight('pythonFunction', s:Grey93, s:clear, s:none)
call s:highlight('pythonBuiltin', s:Grey54, s:clear, s:italic)


" Vimscript syntax highlighting
call s:highlight('vimOption', s:Grey93, s:clear, s:none)


" NERDTree
call s:highlight('NERDTreeClosable', s:MainColor, s:clear, s:none)
call s:highlight('NERDTreeOpenable', s:MainColor, s:clear, s:none)

" *NOTE*
"
" The following groups are plug specific and would require the following plugs
" from github in order for the groups to work.
"

" Elm syntax highlighting
" Requires plug: ElmCast/Magenta2-vim
"
call s:highlight('Magenta2TypeDef', s:MediumOrchid1, s:clear, s:bold)
call s:highlight('Magenta2Alias', s:Grey66, s:clear, s:none)
call s:highlight('Magenta2TopLevelDecl', s:SkyBlue1, s:clear, s:bold)
call s:highlight('Magenta2Braces', s:DarkMagenta, s:clear, s:none)


" Elixir syntax highlighting
" Requires plug: elixir-editors/vim-elixir
"
call s:highlight('elixirAlias', s:Magenta2, s:clear, s:italic)
call s:highlight('elixirDefine', s:MediumOrchid1, s:clear, s:none)
call s:highlight('elixirBlockDefinition', s:MediumOrchid1, s:clear, s:none)
call s:highlight('elixirFunctionDeclaration', s:Grey66, s:clear, s:none)


" GOLang syntax highlighting
" Requires plug: fatih/vim-go
"
call s:highlight('goPackage', s:Orange1, s:clear, s:italic)
call s:highlight('goImport', s:Orange1, s:clear, s:italic)
call s:highlight('goStatement', s:MainColor, s:clear, s:italic)
call s:highlight('goChannel', s:Red1, s:clear, s:none)


" Rust syntax highlighting
" Requires plug: rust-lang/rust.vim
"
call s:highlight('rustMacro', s:MediumOrchid1, s:clear, s:none)
