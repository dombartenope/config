local opt = vim.opt --for conciseness

--line numbers
opt.relativenumber = true --show rel line nums
opt.number = true --shows absolute line number on cursor line (when rel num is on)

--tabs and indents
opt.tabstop = 4 --4 spaces
opt.shiftwidth = 4 --4 spaces for indents width 
opt.expandtab = true --expand tab to spaces
opt.autoindent = true --copy indent from current line when starting new one

--line wrapping
opt.wrap = false --disable line wrapping

--search settings 
opt.ignorecase = true --ignore case when searching
opt.smartcase = true --if you include mixed case when searching, assume that it's case sensitive

--cursor line
opt.cursorline = true --highlight the current cursor line

--appearance

--turn on termguicolors for nightfly colorscheme to work
--(have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" --colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" --show sign column so that text doesn't shift

--backspace
opt.backspace = "indent,eol,start" --allow backspace on indent, eol, or insert mode start pos

--clipboard
opt.clipboard:append("unnamedplus") --use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false
