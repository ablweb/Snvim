-- keymaps
-- open terminal Normal
vim.keymap.set("n", "<A-i>", function()
  require("nvterm.terminal").toggle "float"
end, { desc = "Open floating terminal" })
vim.keymap.set("n", "<A-v>", function()
  require("nvterm.terminal").toggle "vertical"
end, { desc = "Open vertical terminal" })
vim.keymap.set("n", "<A-h>", function()
  require("nvterm.terminal").toggle "horizontal"
end, { desc = "Open horizontal terminal" })
-- open terminal Terminal
vim.keymap.set("t", "<A-i>", function()
  require("nvterm.terminal").toggle "float"
end, { desc = "Open floating terminal" })
vim.keymap.set("t", "<A-v>", function()
  require("nvterm.terminal").toggle "vertical"
end, { desc = "Open vertical terminal" })
vim.keymap.set("t", "<A-h>", function()
  require("nvterm.terminal").toggle "horizontal"
end, { desc = "Open horizontal terminal" })
vim.keymap.set("t", "<A-r>", function()
    vim.cmd("bd! ")
end, { desc = "close terminal" })

-- config
require("nvterm").setup({
  terminals = {
    shell = vim.o.shell,
    list = {},
    type_opts = {
      float = {
        relative = 'editor',
        row = 0.3,
        col = 0.25,
        width = 0.5,
        height = 0.4,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = .3, },
      vertical = { location = "rightbelow", split_ratio = .5 },
    }
  },
  behavior = {
    autoclose_on_quit = {
      enabled = true,
      confirm = true,
    },
    close_on_exit = true,
    auto_insert = true,
  },
})
