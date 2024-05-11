local keymap = vim.keymap -- this creates a shotcut for vim.keymap.set.

-- noremap: no recurse map.
-- silent: hides the output of the map (true).
local opts = { noremap = true, silent = false } 

-- set leader key to space.
vim.g.mapleader = " " 

-- modes:
-- a) normal mode = "n"
-- b) insert mode = "i"
-- c) visual mode = "v"
-- d) term mode = "t"
-- e) visual block mode = "x
-- f) command mode = "c"

-------------------------
-- some key definitions 
-------------------------

-- "CR" - carriage return / press enter.
-- "A" - alt key.

---------------------
-- general keymaps
---------------------

-- use jk to exit insert mode.
keymap.set("i", "jk", "<ESC>", opts)

-- clear search highlights.
keymap.set("n", "<leader>nh", ":nohl<CR>", opts)

-- delete single character without copying into register.
keymap.set("n", "x", '"_x', opts)

-- increment/decrement numbers.
keymap.set("n", "<leader>+", "<C-a>", opts) -- increment
keymap.set("n", "<leader>-", "<C-x>", opts) -- decrement

-- window management.
keymap.set("n", "<leader>d", "<C-w>v", opts) -- split window vertically
keymap.set("n", "<leader>b", "<C-w>s", opts) -- split window horizontally
keymap.set("n", "<leader>f", "<C-w>=", opts) -- make split windows equal width & height
keymap.set("n", "<leader>w", ":close<CR>", opts) -- close current split window
keymap.set("n", "<leader>j", "<C-w>j") --  go to above tab
keymap.set("n", "<leader>k", "<C-w>k") --  go to upper tab
keymap.set("n", "<leader>h", "<C-w>h") --  go to left tab
keymap.set("n", "<leader>l", "<C-w>l") --  go to right tab

keymap.set("n", "<leader>to", ":tabnew<CR>", opts) -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>", opts) -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>", opts) --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>", opts) --  go to previous tab

-- stay in indent mode.
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- move text up and down.
keymap.set("v", "<down>", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "<up>", ":m '<-2<CR>gv=gv", opts)
