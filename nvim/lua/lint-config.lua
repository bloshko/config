local nvim_lint = require("lint")

local eslint_str = "eslint_d"

nvim_lint.linters_by_ft = {
	javascript = { eslint_str },
	typescript = { eslint_str },
	typescriptreact = { eslint_str },
	javascriptreact = { eslint_str },
}

vim.api.nvim_create_autocmd({ "BufEnter", "TextChanged", "InsertLeave" }, {
	callback = function()
		-- try_lint without arguments runs the linters defined in `linters_by_ft`
		-- for the current filetype
		-- vim.schedule(function()
		nvim_lint.try_lint()
		-- end)
	end,
})
