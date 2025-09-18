return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				--ensure_installed = { "lua_ls", "rust_analyzer", "clangd" },
				auto_install = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.lsp.config("rust_analyzer", {
				settings = {
					["rust-analyzer"] = {
						diagnostics = {
							enable = true,
						},
						capabilities = capabilities,
					},
				},
			})
			vim.lsp.config("clangd", {
				settings = {
					capabilities = capabilities,
				},
			})

			vim.lsp.config("clangd", {
				settings = {
					capabilities = capabilities,
				},
			})
		end,
	},
}
