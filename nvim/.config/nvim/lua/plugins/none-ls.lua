return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				-- rust setup
				--null_ls.builtins.diagnostics.clippy,
				--null_ls.builtins.formatting.rustfmt,
				-- c setup
				null_ls.builtins.formatting.clang_format.with({
					command = "/usr/bin/clang-format", -- full path
					extra_args = { "--style=file" },
				}),

			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
