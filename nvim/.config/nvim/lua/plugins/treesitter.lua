return {
	{
		"nvim-treesitter/nvim-treesitter", 
		branch = 'master',
		lazy = false,
		build = ":TSUpdate",
		config= function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {"lua","c","cpp","rust"},	  
				highlight = {enable = true},
				indent= {enable = true},
			})
		end,
	},

}
