local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local k = vim.api.nvim_set_keymap

--Remap space as leader key
k("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
k("n", "<C-h>", "<C-w>h", opts)
k("n", "<C-j>", "<C-w>j", opts)
k("n", "<C-k>", "<C-w>k", opts)
k("n", "<C-l>", "<C-w>l", opts)

k("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
k("n", "<C-Up>", ":resize +2<CR>", opts)
k("n", "<C-Down>", ":resize -2<CR>", opts)
k("n", "<C-Left>", ":vertical resize -2<CR>", opts)
k("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
k("n", "<S-l>", ":bnext<CR>", opts)
k("n", "<S-h>", ":bprevious<CR>", opts)

-- duplicate line
k("n", "<C-d>", ":t.<CR>", opts)

-- Paste
k("n", "<C-v>", "p", opts) 

-- Move text up and down
k("n", "<A-down>", ":m .+1<CR>==", opts)
k("n", "<A-Up>", ":m .-2<CR>==", opts)


-- Insert --
-- Press ;' swich to Normal mode
k("i", ";'", "<ESC>", opts)
k("i", "<C-c>", "<Nop>", opts) 

-- Visual --
-- Stay in indent mode
k("v", "<S-Tab>", "<gv", opts)
k("v", "<Tab>", ">gv", opts)

-- Copy/Paste highlighted text
k("v", "<C-c>", "y", opts) 
k("v", "<C-v>", '"_dP', opts) 

-- Pres ;' swich to Normal mode 
k("v", ";'", "<ESC>", opts)

-- Move text up and down
k("v", "<A-down>", ":m .+1<CR>==", opts)
k("v", "<A-Up>", ":m .-2<CR>==", opts)

-- Visual Block --
-- Move text up and down
k("x", "J", ":move '>+1<CR>gv-gv", opts)
k("x", "K", ":move '<-2<CR>gv-gv", opts)
k("x", "<A-down>", ":move '>+1<CR>gv-gv", opts)
k("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
k("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
k("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
k("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
k("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
