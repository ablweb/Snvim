-- keymaps
vim.keymap.set("n", "<leader>r", ":VimtexView<Cr>", { desc = "Vim tex", silent = true })

-- config
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_view_general_viewer = "okular"
vim.g.vimtex_view_genetal_viewer = [[--unique file:@pdf\#src:@line@tex]]
vim.g.vimtex_compiler_methode = "latexmd"
