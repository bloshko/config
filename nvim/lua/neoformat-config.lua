-- Format on save
local fmtGrp = vim.api.nvim_create_augroup("fmt", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
	command = "try | undojoin | Neoformat | catch /E790/ | Neoformat | endtry",
	group = fmtGrp,
})
