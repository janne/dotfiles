" ============================================================================
" File:        ack.vim
" Description: Uses ack to search in a directory tree
" Dependency:  http://ack.googlecode.com/svn/tags/latest/ack-standalone
" Maintainer:  Jan Andersson <jan.andersson@gmail.com>
" Author:      Ovid: http://use.perl.org/~Ovid/journal/36430
" Last Change: 24 October, 2008
" Licence:     This script is released under the Vim License
" ============================================================================

function! Ack(...)
    let pattern = a:0 ? a:1 : input("Enter pattern to search for: ")

    if !strlen(pattern)
        return
    endif

    let command = 'ack "' . pattern . '" -l'
    let bufname = bufname("%")
    let result  = filter(split( system(command), "\n" ), 'v:val != "'.bufname.'"')
    let lines   = []
    if !empty(result)
        if 1 == len(result)
            let file  = 1
        else

            " grab all the filenames, skipping the current file
            let lines = [ 'Choose a file to edit:' ]
                \ + map(range(1, len(result)), 'v:val .": ". result[v:val - 1]')
            let file  = inputlist(lines)
        end
        if
            \ ( file > 0 && len(result) > 1 && file < len(lines) )
            \ ||
            \ ( 1 == len(result) && 1 == file )
            execute "edit +1 " . result[ file - 1 ]
            execute "/\\v"  . pattern
        endif
    else
        echomsg("No files found matching pattern:  " . pattern)
    endif
endfunction
