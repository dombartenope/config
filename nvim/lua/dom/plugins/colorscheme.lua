return {
	"bluz71/vim-nightfly-guicolors",
	priority = 1000, -- Make sure to load this before all other start plugins
	config = function()
		--load the color scheme here
		vim.cmd([[colorscheme nightfly]])
	end,
}
