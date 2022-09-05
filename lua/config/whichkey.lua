local M = {}

function M.setup()
  local whichkey = require "which-key"

  local conf = {
    window = {
      border = "single", 
      position = "bottom", 
    },
  }

  local opts = {
    mode = "n", 
    prefix = "<leader>",
    buffer = nil, 
    silent = true, 
    noremap = true, 
    nowait = false, 
  }

  local mappings = {
    ["w"] = { "<cmd>update!<CR>", "Save" },
    ["q"] = { "<cmd>q!<CR>", "Quit" },
		["e"] = {"<cmd>NvimTreeToggle<CR>", "Nvim Tree"},

    b = {
      name = "Buffer",
      c = { "<Cmd>bd!<Cr>", "Close current buffer" },
      D = { "<Cmd>%bd|e#|bd#<Cr>", "Delete all buffers" },
			n = { "<Cmd>bnext<Cr>", "Next" },
			b = { "<Cmd>bprevious<Cr>", "Previous" },
    },

    z = {
      name = "Packer",
      c = { "<cmd>PackerCompile<cr>", "Compile" },
      i = { "<cmd>PackerInstall<cr>", "Install" },
      s = { "<cmd>PackerSync<cr>", "Sync" },
      S = { "<cmd>PackerStatus<cr>", "Status" },
      u = { "<cmd>PackerUpdate<cr>", "Update" },
    },

    g = {
      name = "Git",
      s = { "<cmd>Neogit<CR>", "Status" },
    },

		f = {
			name = "Telescope",
			f = {"<cmd>Telescope find_files<CR>", "Files"},
			g = {"<cmd>Telescope live_grep<CR>", "Grep"},
			b = {"<cmd>Telescope buffers<CR>", "Buffers"},
			h = {"<cmd>Telescope help_tags<CR>", "Help tags"},
		},
  }

  whichkey.setup(conf)
  whichkey.register(mappings, opts)
end

return M
