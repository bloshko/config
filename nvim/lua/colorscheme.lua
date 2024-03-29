require("gruvbox").setup({
	terminal_colors = true, -- add neovim terminal colors
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = true,
		emphasis = true,
		comments = true,
		operators = false,
		folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	palette_overrides = {},
	contrast = "hard",
	overrides = {},
	dim_inactive = false,
	transparent_mode = false,
})
vim.o.background = "dark" -- or "light" for light mode
vim.cmd("colorscheme gruvbox")
