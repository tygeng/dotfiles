" simple_comment.vim v0.1
" simple_comment.vim is a small script (eight lines) to toggle line comment. 
" You can easily add more langages, take a look at the .vim.
" 
" Uncomment this next line to use s as trigger key.
" map <silent> s :call Co(&ft)<CR>
" 
" boisvertmaxime@gmail.com

fun! Co(ft)
    let dic = {'xkb':'//','objc':'//','matlab':'%','cpp':'//','tex':'%','java':'//','haskell':'--','c':'//', 'cuda':'//', 'ruby':'#', 'vim':'"', 'perl':'#', 'sh':'#', 'zsh':'#', 'python':'#', 'lua':'--', 'markdown':'>', 'scheme':';', 'xmodmap':'!', 'conf':'#', 'make':'#','php':'//','css':'//'}
    if has_key(dic, a:ft)
        let c = dic[a:ft]
        exe "s@^@".c." @ | s@^".c." ".c." @@e"
    endif
endfun
