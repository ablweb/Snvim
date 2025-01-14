-- Keymaps
local api = require("nvim-tree.api")
vim.keymap.set("n", "<c-n>", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree", silent = true })
vim.keymap.set("n", "<leader>fc", function()
  api.tree.toggle()
  api.tree.find_file({ update_root = true, open = true, focus = true })
end, { desc = "Find file", silent = true })
vim.keymap.set("n", "<leader>cd", api.tree.change_root_to_node, { desc = "Change directory" })

-- config
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

