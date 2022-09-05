local keymap = vim.api.nvim_set_keymap local default_opts = { noremap = true, silent = true }

keymap("x", "J", ":move '>+1<CR>gv-gv", default_opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", default_opts)

keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
keymap("n", "<S-l>", ":bnext<CR>", default_opts)

keymap("v", "p", '"_dP', default_opts)

