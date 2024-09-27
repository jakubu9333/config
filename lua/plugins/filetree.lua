return {
	"kyazdani42/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			filters = {
				custom = { ".git", "node_modules", ".vscode" },
				dotfiles = true,
			},
			git = {
				-- ignore = true
			},
			view = {
				adaptive_size = true,
				float = {
					enable = true,
				},
			},
		})
		vim.keymap.set("n", "<leader>ft", vim.cmd.NvimTreeToggle)
	end,
}
