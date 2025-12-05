require "nvchad.options"

-- add yours here!

local o = vim.o

-- Indenting
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4

vim.opt.wrap = true
vim.opt.linebreak = true -- wrap at word boundaries
vim.opt.breakindent = true -- keep indentation on wrapped lines

vim.o.relativenumber = true
vim.o.number = true
-- o.cursorlineopt ='both' -- to enable cursorline!

-- enabling python3 interpreter 12/3/2025
vim.g.loaded_python3_provider = nil
vim.g.python3_host_prog = "/usr/bin/python3"
