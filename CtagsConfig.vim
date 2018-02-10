
let g:ctags_path =  has('win32') || has('win64') ? 'ctags.exe' : '/usr/local/bin/ctags'

let g:ctags_statusline = 0

let g:ctags_title = 1

let generate_tags = 1

let g:ctags_args = '-I __declspec+'

""let s:TagsFolderName = g:IsWindowsOS ? '$HOME/tags/Win' : '$HOME/tags/OSX'
let TagsFolderName =  ( has('win32') || has('win64') ) ? '$HOME/tags/Win' : '$HOME/tags/OSX'

"" configure tags - add additional tags here or comment out not-used ones

if (  ( has('win32') || has('win64') ) )
  set tags+='X:\Frameworks\tags\cpp\QT.tags'
else
  exec ':set tags+=' . TagsFolderName . '/cpp/cpp.tags'
  exec ':set tags+=' . TagsFolderName . '/cpp/OpenGL.tags'
  exec ':set tags+=' . TagsFolderName . '/cpp/GLUT.tags'
  exec ':set tags+=' . TagsFolderName . '/python/python.tags'
endif
