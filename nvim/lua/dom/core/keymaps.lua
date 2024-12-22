-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode -- Meh...
--keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

--Use incremental navigation up and down
keymap.set("n", "j", "gj", {desc="Move up and down by line instead of wrapped line"})
keymap.set("n", "k", "gk", {desc="Move up and down by line instead of wrapped line"})


--Use leader e to switch between buffer and nvim tree explorer
keymap.set("n", "<leader>w", "<C-w>w", {desc = "Move between buffer and explorer"})

-- clear search highlights
keymap.set("n", "<leader>h", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

--increment and decrement using leader+/-
keymap.set("n", "<leader>+", "<C-a>", {desc = "Increment Number"}) --increment
keymap.set("n", "<leader>-", "<C-x>", {desc = "Decrement Number"}) --decrement

--window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

--tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

--tmux navigation override
keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", {desc = "Pane Left"}) --Tmux Nav Left
keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", {desc = "Pane Right"}) --Tmux Nav Right
keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", {desc = "Pane Down"}) --Tmux Nav Down
keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", {desc = "Pane Up"}) --Tmux Nav Up

--open tmux pane from cwd
keymap.set("n", "<C-b>", "<cmd> :!tmux split-window -v && cd %:p:h <CR><CR>", {desc = "Open Vertical Pane (CWD)"}) --Tmux Pane Vertical
keymap.set("n", "<C-n>", "<cmd> :!tmux split-window -h && cd %:p:h <CR><CR>", {desc = "Open Horizontal Pane (CWD)"}) --Tmux Pane Horizontal

--open current file in finder
keymap.set("n", "<cmd>open", "<cmd>:!open . <CR>", {desc = "Open In Finder"}) --Open In Finder


--override jump to mark using leader instead of apostrophe
local opts = { desc = "Mark-related bindings", noremap = true, silent = true}
keymap.set("n", "<leader>m", function()
  local char = vim.fn.getcharstr() -- Get the next character (mark)
  vim.cmd("normal! '" .. char .. "zz") -- Jump to the mark and center
end, opts)
