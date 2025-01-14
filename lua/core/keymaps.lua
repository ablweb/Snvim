vim.g.mapleader = " "
local map = vim.keymap.set

-------------------------- Insert Mode --------------------------
-- Go to beginning and end
map("i", "<C-b>", "<ESC>^i", { desc = "Beginning of line" })
map("i", "<C-e>", "<End>", { desc = "End of line" })
-- Navigate in insert mode
map("i", "<c-k>", "<Left>", { desc = "Move left" })
map("i", "<c-j>", "<Right>", { desc = "Move right" })
map("i", "<c-h>", "<Down>", { desc = "Move down" })
map("i", "<c-l>", "<Up>", { desc = "Move up" })
-- exit insert mode
map("i", "jk", "<esc>", { desc = "Exit insert mode" })

-------------------------- Normal Mode --------------------------
-- switch between windows
map("n", "<C-h>", "<C-w>h", { desc = "Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Window up" })
-- save and copy
map("n", "<C-s>", "<cmd> w <CR>", { desc = "Save file" })
map("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy whole file" })
-- line numbers
map("n", "<leader>n", "<cmd> set nu! <Cr>", { desc = "Toggle line number" })
map("n", "<leader>rn", "<cmd> set rnu! <Cr>", { desc = "Toggle line number" })
-- inline
map("n", "J", "mzJ'z", { desc = "Inline next line" })
-- new buffer
map("n", "<leader>b", "<cmd> enew <CR>", { desc = "New buffer" })
-- open terminal in new window
map("n", "<leader>tt", ":!alacritty --working-directory %:h & <CR>",
  { desc = "Open terminal in new window", silent = true })

-------------------------- Visual Mode --------------------------
--- move line
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected up" })
-- indent line
map("v", "<", "<gv", { desc = "Indent line" })
map("v", ">", ">gv", { desc = "Indent line" })

-------------------------- Terminal Mode --------------------------
map("t", "<C-x>", vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true),
  { desc = "Escpare terminal mode" })

-------------------------- X cut Mode -----------------------------
map("x", "<leader>p", [["_dP]])

-------------------------- Plugins --------------------------------
-- keymaps are located in respective plugins settings file
