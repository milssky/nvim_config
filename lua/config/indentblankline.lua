local M = {}

function M.setup()
	local indent = require "indent_blankline"
	vim.opt.list = true
	vim.opt.listchars:append "eol:↴"
	local conf = {
		show_end_of_line = true,
	}
	indent.setup(conf)
end

return M
