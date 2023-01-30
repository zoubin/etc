" nnoremap <silent> [fzf-p]p     :<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>
nnoremap <silent> [fzf-p]gs    :<C-u>CocCommand fzf-preview.GitStatus<CR>
" Select project files
nnoremap <silent> [fzf-p]O     :<C-u>CocCommand fzf-preview.ProjectFiles<CR>
" Select files from selected resources (project, git, directory, buffer, project_old, project_mru, project_mrw, old, mru, mrw)
nnoremap <silent> [fzf-p]o     :<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>
" Select jumplist item
nnoremap <silent> [fzf-p]j :<C-u>CocCommand fzf-preview.Jumps<CR>
" Select changelist item
" nnoremap <silent> [fzf-p]g;    :<C-u>CocCommand fzf-preview.Changes<CR>
" Select line from current buffer (Required [bat](https://github.com/sharkdp/bat))
" nnoremap <silent> [fzf-p]/     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'"<CR>
" nnoremap <silent> [fzf-p]*     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
" Grep project files from args word
nnoremap          [fzf-p]gr    :<C-u>CocCommand fzf-preview.ProjectGrep<Space>
xnoremap          [fzf-p]gr    "sy:CocCommand   fzf-preview.ProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
" Execute and edit command history
nnoremap <silent> [fzf-p]c :<C-u>fzf-preview.CommandPalette<CR>
" Select line from QuickFix
" nnoremap <silent> [fzf-p]q     :<C-u>CocCommand fzf-preview.QuickFix<CR>
" nnoremap <silent> [fzf-p]l     :<C-u>CocCommand fzf-preview.LocationList<CR>
" " Select project files
" :CocCommand fzf-preview.ProjectFiles
" Select file from git ls-files
" :CocCommand fzf-preview.GitFiles
" Select file from directory files (default to current working directory) (Required [ripgrep](https://github.com/BurntSushi/ripgrep))
" :CocCommand fzf-preview.DirectoryFiles
" Select file buffers. Used open-buffer processes.
" :CocCommand fzf-preview.Buffers
" Select all buffers. Used open-bufnr processes
" :CocCommand fzf-preview.AllBuffers
" Select project files from oldfiles
" :CocCommand fzf-preview.ProjectOldFiles
" Select project mru (Most Recently Used) files
" :CocCommand fzf-preview.ProjectMruFiles
" Select project mrw (Most Recently Written) files
" :CocCommand fzf-preview.ProjectMrwFiles
" Grep project files from args word
" :CocCommand fzf-preview.ProjectGrep {args}
" Run FzfPreviewProjectGrep with the same arguments as before.
" :CocCommand fzf-preview.ProjectGrepRecall
" Select tags from tags file (Required [universal-ctags](https://github.com/universal-ctags/ctags))
" :CocCommand fzf-preview.Ctags
" Select tags from current files (Required [universal-ctags](https://github.com/universal-ctags/ctags))
" :CocCommand fzf-preview.BufferTags
" Select files from oldfiles
" :CocCommand fzf-preview.OldFiles
" Select mru (Most Recently Used) files
" :CocCommand fzf-preview.MruFiles
" Select mrw (Most Recently Written) files
" :CocCommand fzf-preview.MrwFiles
" Select line from QuickFix
" :CocCommand fzf-preview.QuickFix
" Select line from LocationList
" :CocCommand fzf-preview.LocationList
" Select line from current buffer (Required [bat](https://github.com/sharkdp/bat))
" :CocCommand fzf-preview.Lines
" Select line from loaded buffer
" :CocCommand fzf-preview.BufferLines

" Select jumplist item
" :FzfPreviewJumpsRpc
" :FzfPreviewJumps
" :CocCommand fzf-preview.Jumps

" Select changelist item
" :FzfPreviewChangesRpc
" :FzfPreviewChanges
" :CocCommand fzf-preview.Changes

" Select mark
" :FzfPreviewMarksRpc
" :CocCommand fzf-preview.Marks

" Select files from selected resources (project, git, directory, buffer, project_old, project_mru, project_mrw, old, mru, mrw)
" :FzfPreviewFromResourcesRpc
" :FzfPreviewFromResources
" :CocCommand fzf-preview.FromResources

" Execute and edit command history
" :FzfPreviewCommandPaletteRpc
" :FzfPreviewCommandPalette
" :CocCommand fzf-preview.CommandPalette

# Grep vim help
" :FzfPreviewGrepHelpRpc
" :FzfPreviewGrepHelp
" :CocCommand fzf-preview.GrepHelp

" Interactive git integration. (Required [Fugitive](https://github.com/tpope/vim-fugitive) or [Gina](https://github.com/lambdalisue/gina.vim))
" :FzfPreviewGitActionsRpc
" :FzfPreviewGitActions
" :CocCommand fzf-preview.GitActions

" Select git status listed file. (Required [Fugitive](https://github.com/tpope/vim-fugitive) or [Gina](https://github.com/lambdalisue/gina.vim))
" :FzfPreviewGitStatusRpc
" :FzfPreviewGitStatus
" :CocCommand fzf-preview.GitStatus

" Select references from vim-lsp
" :FzfPreviewVimLspReferencesRpc
" :FzfPreviewVimLspReferences

" Select diagnostics from vim-lsp
" :FzfPreviewVimLspDiagnosticsRpc
" :FzfPreviewVimLspDiagnostics

" Select current file diagnostics from vim-lsp
" :FzfPreviewVimLspCurrentDiagnosticsRpc
" :FzfPreviewVimLspCurrentDiagnostics

" Select definitions from vim-lsp
" :FzfPreviewVimLspDefinitionRpc
" :FzfPreviewVimLspDefinition

" Select type definitions from vim-lsp
" :FzfPreviewVimLspTypeDefinitionRpc
" :FzfPreviewVimLspTypeDefinition

" Select implementations from vim-lsp
" :FzfPreviewVimLspImplementationsRpc
" :FzfPreviewVimLspImplementations

" Select tags from vista.vim (Required [vista.vim](https://github.com/liuchengxu/vista.vim))
" :FzfPreviewVistaCtagsRpc
" :FzfPreviewVistaCtags
" :CocCommand fzf-preview.VistaCtags

" Select current buffer tags from vista.vim (Required [vista.vim](https://github.com/liuchengxu/vista.vim))
" :FzfPreviewVistaBufferCtagsRpc
" :FzfPreviewVistaBufferCtags
" :CocCommand fzf-preview.VistaBufferCtags

" Select bookmarks (Required [vim-bookmarks](https://github.com/MattesGroeger/vim-bookmarks))
" :FzfPreviewBookmarksRpc
" :FzfPreviewBookmarks
" :CocCommand fzf-preview.Bookmarks

" Select register history (Required [yankround.vim](https://github.com/LeafCage/yankround.vim))
" :FzfPreviewYankroundRpc
" :FzfPreviewYankround
" :CocCommand fzf-preview.Yankround

" Select memolist (Required [glidenote/memolist.vim](https://github.com/glidenote/memolist.vim))
" :FzfPreviewMemoListRpc
" :FzfPreviewMemoList
" :CocCommand fzf-preview.MemoList

" Grep memolist (Required [glidenote/memolist.vim](https://github.com/glidenote/memolist.vim))
" :FzfPreviewMemoListGrepRpc
" :FzfPreviewMemoListGrep
" :CocCommand fzf-preview.MemoListGrep

" Search TodoComments (Required  [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim))
" :FzfPreviewTodoCommentsRpc
" :FzfPreviewTodoComments
" :CocCommand fzf-preview.TodoComments

" Open the PR corresponding to the selected line (Required [GitHub cli](https://github.com/cli/cli))
" :FzfPreviewBlamePRRpc
" :FzfPreviewBlamePR
" :CocCommand fzf-preview.BlamePR

" Select references from coc.nvim (only coc extensions)
" :CocCommand fzf-preview.CocReferences

" Select diagnostics from coc.nvim (only coc extensions)
" :CocCommand fzf-preview.CocDiagnostics

" Select current file diagnostics from coc.nvim (only coc extensions)
" :CocCommand fzf-preview.CocCurrentDiagnostics

" Select definitions from coc.nvim (only coc extensions)
" :CocCommand fzf-preview.CocDefinition

" Select type definitions from coc.nvim (only coc extensions)
" :CocCommand fzf-preview.CocTypeDefinition

" Select implementations from coc.nvim (only coc extensions)
" :CocCommand fzf-preview.CocImplementations

" Select outline from coc.nvim (only coc extensions)
" :CocCommand fzf-preview.CocOutline

