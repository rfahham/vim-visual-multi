fun! vm#plugs#init()
    nnoremap        <Plug>(VM-Add-Cursor-At-Pos)       :call vm#commands#add_cursor_at_pos(0, 0)<cr>
    nnoremap        <Plug>(VM-Add-Cursor-At-Word)      :call vm#commands#add_cursor_at_word(1, 1)<cr>
    nnoremap        <Plug>(VM-Add-Cursor-Down)         :call vm#commands#add_cursor_at_pos(1, 0)<cr>
    nnoremap        <Plug>(VM-Add-Cursor-Up)           :call vm#commands#add_cursor_at_pos(2, 0)<cr>
    nnoremap        <Plug>(VM-Select-Down)             :call vm#commands#add_cursor_at_pos(1, 1)<cr>
    nnoremap        <Plug>(VM-Select-Up)               :call vm#commands#add_cursor_at_pos(2, 1)<cr>

    nnoremap        <Plug>(VM-Select-All)              :call vm#commands#find_all(0, 1, 0)<cr>
    xnoremap        <Plug>(VM-Select-All)              y:call vm#commands#find_all(1, 0, 0)<cr>`]
    nnoremap        <Plug>(VM-Find-I-Word)             :call vm#commands#find_under(0, 0, 0)<cr>
    nnoremap        <Plug>(VM-Find-A-Word)             :call vm#commands#find_under(0, 0, 1)<cr>
    nnoremap        <Plug>(VM-Find-I-Whole-Word)       :call vm#commands#find_under(0, 1, 0)<cr>
    nnoremap        <Plug>(VM-Find-A-Whole-Word)       :call vm#commands#find_under(0, 1, 1)<cr>
    xnoremap        <Plug>(VM-Find-A-Subword)          y:call vm#commands#find_under(1, 0, 0)<cr>`]
    xnoremap        <Plug>(VM-Find-A-Whole-Subword)    y:call vm#commands#find_under(1, 1, 0)<cr>`]

    nnoremap        <Plug>(VM-Star)                    :call vm#commands#add_under(0, 1, 0, 1)<cr>
    nnoremap        <Plug>(VM-Hash)                    :call vm#commands#add_under(0, 1, 1, 1)<cr>
    nnoremap        <Plug>(VM-Add-I-Word)              :call vm#commands#add_under(0, 0, 0)<cr>
    nnoremap        <Plug>(VM-Add-A-Word)              :call vm#commands#add_under(0, 0, 1)<cr>
    nnoremap        <Plug>(VM-Add-I-Whole-Word)        :call vm#commands#add_under(0, 1, 0)<cr>
    nnoremap        <Plug>(VM-Add-A-Whole-Word)        :call vm#commands#add_under(0, 1, 1)<cr>
    xnoremap        <Plug>(VM-Star)                    y:call vm#commands#add_under(1, 0, 0, 1)<cr>`]
    xnoremap        <Plug>(VM-Hash)                    y:call vm#commands#add_under(1, 1, 0, 1)<cr>`]

    nnoremap        <Plug>(VM-Toggle-Motions)          :call vm#maps#motions_toggle()<cr>
    nnoremap        <Plug>(VM-Toggle-Multiline)        :call b:VM_Selection.Funcs.toggle_option('multiline')<cr>
    nnoremap        <Plug>(VM-Toggle-Debug)            :let b:VM_Selection.Vars.debug = !b:VM_Selection.Vars.debug<cr>
    nnoremap        <Plug>(VM-Toggle-Whole-Word)       :call b:VM_Selection.Funcs.toggle_option('whole_word')<cr>
    nnoremap        <Plug>(VM-Toggle-Only-This-Region) :call b:VM_Selection.Funcs.toggle_option('only_this_always')<cr>
    nnoremap        <Plug>(VM-Case-Setting)            :call b:VM_Selection.Search.case()<cr>
    nnoremap        <Plug>(VM-Case-Setting)            :call b:VM_Selection.Search.case()<cr>
    nnoremap        <Plug>(VM-Rewrite-Last-Search)     :call b:VM_Selection.Search.rewrite(1)<cr>
    nnoremap        <Plug>(VM-Rewrite-All-Search)      :call b:VM_Selection.Search.rewrite(0)<cr>
    nnoremap        <Plug>(VM-Read-From-Search)        :call b:VM_Selection.Search.get_slash_reg()<cr>
    nnoremap        <Plug>(VM-Remove-Search)           :call b:VM_Selection.Search.remove(0)<cr>
    nnoremap        <Plug>(VM-Remove-Search-Regions)   :call b:VM_Selection.Search.remove(1)<cr>

    nnoremap        <Plug>(VM-Start-Regex-Search)      :call vm#commands#find_by_regex()<cr>:call <SID>Mode()<cr>/
    nnoremap        <Plug>(VM-Show-Regions-Text)       :call b:VM_Selection.Funcs.regions_contents()<cr>
    nnoremap        <Plug>(VM-Switch-Mode)             :call vm#commands#change_mode(0)<cr>
    nnoremap        <Plug>(VM-Reset)                   :call vm#reset()<cr>
    nnoremap        <Plug>(VM-Run-Macro)               :call b:VM_Selection.Edit.run_macro()<cr>

    nnoremap        <Plug>(VM-Invert-Direction)        :call vm#commands#invert_direction()<cr>
    nnoremap        <Plug>(VM-Goto-Next)               :call vm#commands#find_next(0, 1)<cr>
    nnoremap        <Plug>(VM-Goto-Prev)               :call vm#commands#find_prev(0, 1)<cr>
    nnoremap        <Plug>(VM-Find-Next)               :call vm#commands#find_next(0, 0)<cr>
    nnoremap        <Plug>(VM-Find-Prev)               :call vm#commands#find_prev(0, 0)<cr>
    nnoremap        <Plug>(VM-Merge-To-Eol)            :call vm#commands#merge_to_beol(1, 0)<cr>
    nnoremap        <Plug>(VM-Merge-To-Bol)            :call vm#commands#merge_to_beol(0, 0)<cr>
    nnoremap        <Plug>(VM-Merge-Regions)           :call b:VM_Selection.Global.merge_regions()<cr>
    nnoremap        <Plug>(VM-Skip-Region)             :call vm#commands#skip(0)<cr>
    nnoremap        <Plug>(VM-Remove-Region)           :call vm#commands#skip(1)<cr>
    nnoremap        <Plug>(VM-Undo-Last)               :call vm#commands#undo()<cr>

    nnoremap        <Plug>(VM-Select-One-Inside)       :call vm#commands#select_motion(0, 1)<cr>
    nnoremap        <Plug>(VM-Select-One-Around)       :call vm#commands#select_motion(1, 1)<cr>
    nnoremap        <Plug>(VM-Select-All-Inside)       :call vm#commands#select_motion(0, 0)<cr>
    nnoremap        <Plug>(VM-Select-All-Around)       :call vm#commands#select_motion(1, 0)<cr>

    nnoremap        <Plug>(VM-This-Motion-h)           :call vm#commands#motion('h', 1)<cr>
    nnoremap        <Plug>(VM-This-Motion-l)           :call vm#commands#motion('l', 1)<cr>

    nnoremap        <Plug>(VM-Motion-h)                :call vm#commands#motion('h', 0)<cr>
    nnoremap        <Plug>(VM-Motion-j)                :call vm#commands#motion('j', 0)<cr>
    nnoremap        <Plug>(VM-Motion-k)                :call vm#commands#motion('k', 0)<cr>
    nnoremap        <Plug>(VM-Motion-l)                :call vm#commands#motion('l', 0)<cr>
    nnoremap        <Plug>(VM-Motion-H)                :call vm#commands#motion('H', 0)<cr>
    nnoremap        <Plug>(VM-Motion-J)                :call vm#commands#motion('J', 0)<cr>
    nnoremap        <Plug>(VM-Motion-K)                :call vm#commands#motion('K', 0)<cr>
    nnoremap        <Plug>(VM-Motion-L)                :call vm#commands#motion('L', 0)<cr>

    nnoremap        <Plug>(VM-Motion-b)                :call vm#commands#motion('b', 0)<cr>
    nnoremap        <Plug>(VM-Motion-B)                :call vm#commands#motion('B', 0)<cr>
    nnoremap        <Plug>(VM-Motion-w)                :call vm#commands#motion('w', 0)<cr>
    nnoremap        <Plug>(VM-Motion-W)                :call vm#commands#motion('W', 0)<cr>
    nnoremap        <Plug>(VM-Motion-e)                :call vm#commands#motion('e', 0)<cr>
    nnoremap        <Plug>(VM-Motion-E)                :call vm#commands#motion('E', 0)<cr>
    nnoremap        <Plug>(VM-Fast-Back)               :call vm#commands#end_back(1, 0)<cr>
    nnoremap        <Plug>(VM-End-Back)                :call vm#commands#end_back(0, 0)<cr>

    nnoremap        <Plug>(VM-Motion-f)                :call vm#commands#find_motion('f', '', 0)<cr>
    nnoremap        <Plug>(VM-Motion-F)                :call vm#commands#find_motion('F', '', 0)<cr>
    nnoremap        <Plug>(VM-Motion-t)                :call vm#commands#find_motion('t', '', 0)<cr>
    nnoremap        <Plug>(VM-Motion-T)                :call vm#commands#find_motion('T', '', 0)<cr>
    nnoremap        <Plug>(VM-Motion-$)                :call vm#commands#find_motion('$', '', 0)<cr>
    nnoremap        <Plug>(VM-Motion-0)                :call vm#commands#find_motion('0', '', 0)<cr>
    nnoremap        <Plug>(VM-Motion-^)                :call vm#commands#find_motion('^', '', 0)<cr>
    nnoremap        <Plug>(VM-Motion-%)                :call vm#commands#find_motion('%', '', 0)<cr>

    nnoremap        <Plug>(VM-Motion-Shrink)           :call vm#commands#shrink_or_enlarge(1, 0)<cr>
    nnoremap        <Plug>(VM-Motion-Enlarge)          :call vm#commands#shrink_or_enlarge(0, 0)<cr>

    fun! <SID>Mode()
        let mode = g:VM.extend_mode? ' (extend mode)' : ' (cursor mode)'
        call b:VM_Selection.Funcs.msg('Enter regex'.mode.':')
    endfun

    let remaps = g:VM_custom_remaps
    for m in keys(remaps)
        exe "nnoremap <Plug>(VM-Remap-Motion-".remaps[m].") :call vm#commands#remap_motion('".remaps[m]."')\<cr>"
    endfor

    nnoremap <expr> <Plug>(VM-:)                       vm#commands#regex_reset(':')
    nnoremap <expr> <Plug>(VM-/)                       vm#commands#regex_reset('/')
    nnoremap <expr> <Plug>(VM-?)                       vm#commands#regex_reset('?')
endfun
