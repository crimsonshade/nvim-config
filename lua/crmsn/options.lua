-- :help options
local options = {
	backup = false,							 -- creates a backup file
	clipboard = "unnamedplus"	,			 -- allows neovim to access the system clipboard
	cmdheight = 2	,						 -- more space in the nvim command line for displaying messages
	completeopt = { "menuone", "noselect" }, -- mostly just for cmp
	conceallevel = 0, 						 -- so that `` is visible in markdown files
	fileencoding = "utf-8",					 -- the encoding written to a file
	hlsearch = true,						 -- highlight all matches on prvious search pattern
	ignorecase = true,						 -- ignore case in search patterns
	mouse = "a",							 -- allow the mose to be used in nvim
	pumheight = 10,							 -- pop up menu height
	showmode = false,						 -- we don't need to see things like -- INSERT -- anymore
	showtabline = 2, 						 -- always show tabs
	smartcase = true,						 -- smart case
	smartindent = true,						 -- make indenting smarter again
	splitbelow = true,						 -- force all horizontal splots to go below current window
	splitright = true,						 -- force all vertical splits to go right current window
	swapfile = false,						 -- create a swapfile
	termguicolors = true,					 -- set term gui colors
	timeoutlen = 1000,						 -- time to wait for a mapped sequende tgo complete (in mil)
	undofile = true,						 -- enable persistent undo
	updatetime = 300,						 -- faster completion (4000ms default)
	writebackup = false,					 -- if a file is being edited by another program (or was written to file while editing with another program, it is not creating a backup file
	expandtab = true,						 -- convert tabs to spaces
	shiftwidth = 4,							 -- the number of spaces inserted for each indentation
	tabstop = 4	,							 -- insert 4 spaces for a tab
	cursorline = true,						 -- highlight the current line
	number = true,							 -- set numbered lines
	relativenumber = true,					 -- set relative line numbers
	numberwidth = 4,						 -- set number column width to 4
	signcolumn = "yes",						 -- always show the sign column, otherwise it would shift the text eacht time
	wrap = false,							 -- display lines as one long line
	scrolloff = 8,							 -- scrolls the screen when we are at line 8
	sidescrolloff = 8,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
