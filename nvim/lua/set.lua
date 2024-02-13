vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.confirm = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.titlestring = "%t"
vim.opt.title = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.g.mapleader = " "
vim.opt.cursorline = true

vim.o.relativenumber = true

vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true })

-- Moving lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- No Q
vim.keymap.set("n", "Q", "<nop>")
--
-- Telescope
local builtin = require("telescope.builtin")
-- open fuzzy finder (all files)
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
-- open fuzzy finder (git files)
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
-- grep search
vim.keymap.set("n", "<leader>pg", builtin.live_grep, {})
-- cursor word search
vim.keymap.set("n", "<leader>wg", builtin.grep_string, {})
-- search help files
vim.keymap.set("n", "<leader>hg", builtin.help_tags, {})
-- search git status
vim.keymap.set("n", "<leader>sg", builtin.git_status, {})
-- search open buffers
vim.keymap.set("n", "<leader>bg", builtin.buffers, {})
-- search registers
vim.keymap.set("n", "<leader>rg", builtin.registers, {})

--
-- copy into clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("v", "<leader>y", '"+y')

--
-- Neoformat
-- format the file
vim.keymap.set("n", "<leader>f", ":Neoformat<CR>")

--
-- LSP
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)

--
-- Fugitive
-- open git fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

--
-- Undotree
-- open undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Tree
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeFindFileToggle<cr>", { silent = true, noremap = true })
