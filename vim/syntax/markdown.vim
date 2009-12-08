" Vim universal .md syntax file
" Language:     Markdown
" Maintainer:   Jan Andersson <jan.andersson@gmail.com>
" Last change:  8 Dec 2009
"
" An initial syntax file for John Gruber's Markdown.
"
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

syn match mdOperator "[-=*]"
syn match mdLink       "\(http\|https\|ftp\|ssh\|spotify\)\(\w\|[\-&=,?\:\.#\/]\)\+"
syn match mdMail       "\(\w\|[!#$%&'*+-/=?^_`{|}~.]\)\+@\(\w\|[!#$%&'*+-/=?^_`{|}~.]\)\+"

" Cites
syn region mdCite      matchgroup=mdOperator  start="\""      end="\""
" utf8 international cites:
" ‚ ’   U+201A (8218), U+2019 (8217)    Polish single quotation
" „ ”   U+201E (8222), U+201d (8221)    Polish double quotation
" « »   U+00AB (171),  U+00BB (187)     French quotes
" ‘ ’   U+2018 (8216), U+2019 (8217)    British quotes
" „ “   U+201E (8222), U+2019 (8217)    German quotes
" ‹ ›   U+2039 (8249), U+203A (8250)    French quotes
syn region mdCite      matchgroup=mdOperator  start="[‚„«‘„‹`]"        end="[’”»’“›`]"
syn region mdCite      matchgroup=mdOperator  start="\(\s\|^\)\@<='"  end="'"

" Comments
syn region mdComments  matchgroup=mdComments start="\/\/"     end="$"           oneline
syn region mdComments  start="\/\*"    end="\*\/"

" Delims
syn region mdDelims    matchgroup=mdOperator start="("        end=")"     contains=mdLink,mdMail    oneline
syn region mdDelims    matchgroup=mdOperator start="<"        end=">"     contains=mdLink,mdMail    oneline
syn region mdDelims    matchgroup=mdOperator start="{"        end="}"         oneline
syn region mdDelims    matchgroup=mdOperator start="\["       end="\]"        oneline

syn case match

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
  if version < 508
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink mdOperator            Operator
  HiLink mdLink                Special
  HiLink mdMail                Special
  HiLink mdCite                String
  HiLink mdComments            Comment
  HiLink mdDelims              Delimiter

  delcommand HiLink

let b:current_syntax = "md"
" vim: ts=8
