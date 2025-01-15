local cmp = require("cmp")
local luasnip = require("luasnip")

-- appearance
vim.cmd[[highlight CopilotSuggestion ctermfg=14 guifg=#88c0d0 guibg=#383838]]  -- Soft cyan for minimal contrast

vim.g.copilot_enabled = false

-- keymaps
vim.keymap.set("i", "<M-y>", "copilot#Accept(\"\\<CR>\")", {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true
vim.keymap.set("i", "<M-w>", "<Plug>(copilot-accept-word)")
vim.keymap.set("i", "<M-l>", "<Plug>(copilot-accept-line)")
vim.keymap.set("i", "<M-->", "<Plug>(copilot-next)")
vim.keymap.set("i", "<M-)>", "<Plug>(copilot-previous)")
vim.keymap.set("i", "<M-/>", "<Plug>(copilot-dismiss)")
vim.keymap.set("n", "<leader>cop", function ()
  vim.g.copilot_enabled = not vim.g.copilot_enabled
  print("Copilot: " .. (vim.g.copilot_enabled and "Enabled" or "Disabled"))
end)

-- config
local function set_trigger(trigger)
  vim.b.copilot_suggestion_auto_trigger = trigger
  vim.b.copilot_suggestion_hidden = not trigger
end
-- Disable suggestions when inside a snippet.
cmp.event:on("menu_closed", function()
  set_trigger(not luasnip.expand_or_locally_jumpable())
end)
vim.api.nvim_create_autocmd("User", {
  pattern = { "LuasnipInsertNodeEnter", "LuasnipInsertNodeLeave" },
  callback = function()
    set_trigger(not luasnip.expand_or_locally_jumpable())
  end,
})
