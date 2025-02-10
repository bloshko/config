require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = {
		"bash",
		"css",
		"rust",
		"html",
		"dockerfile",
		"gitignore",
		"graphql",
		"json",
		"tsx",
		"gitcommit",
		"javascript",
		"c",
		"lua",
		"vim",
		"query",
	},

	autotag = {
		enable = true,
	},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	highlight = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
})

require("ts_context_commentstring").setup({
	enable = true,
	enable_autocmd = false,
})
