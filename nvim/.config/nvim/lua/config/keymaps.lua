local builtin = require("telescope.builtin")
-- Telescope keymaps
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" })

-- Neotree keymaps

vim.keymap.set("n", "<leader>b", ":Neotree filesystem reveal right<CR>", { desc = "open neo tree on right" })


vim.keymap.set("n", "<leader>bb", ":Neotree close<CR>", { desc = "open neo tree on right" })

-- lsp keymaps
vim.keymap.set("n","K",vim.lsp.buf.hover,{})
vim.keymap.set("n","gd",vim.lsp.buf.definition,{})
vim.keymap.set("n","gr",vim.lsp.buf.references,{})
vim.keymap.set("n","<leader>ca",vim.lsp.buf.code_action,{})
vim.keymap.set("n","<leader>d",":Telescope diagnostics<CR>",{})
