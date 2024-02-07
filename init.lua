vim.cmd('source ~/.config/nvim/vimscript.vim')
vim.cmd('source ~/.config/nvim/keybinds.vim')
vim.cmd('source ~/.config/nvim/vimscript/vsnip.vim')

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'rebelot/kanagawa.nvim'
	use 'nyoom-engineering/oxocarbon.nvim'
	use 'Mofiqul/vscode.nvim'
	use({
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"SmiteshP/nvim-navic",

		},
		after = "nvim-web-devicons", -- keep this if you're using NvChad
		config = function()
			require("barbecue").setup()
		end,
	})

	use {
		"nvim-neo-tree/neo-tree.nvim",
		opts = {
			sources = { "filesystem", "buffers", "git_status", "document_symbols" },
		},
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		}
	}
	use{
		'altermo/ultimate-autopair.nvim',
		event={'InsertEnter','CmdlineEnter'},
		branch='v0.6',
		config=function ()
			require('ultimate-autopair').setup({
				--Config goes here
			})
		end,
	}
	use {
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	}
	use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
	use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
	use 'romgrk/barbar.nvim'
	use 'kvrohit/rasmus.nvim'

	--cmp:
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'saadparwaiz1/cmp_luasnip'
	use 'uga-rosa/cmp-dictionary'


	--snippets:
	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'

	--lsp:
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'simrat39/symbols-outline.nvim'
	use 'simrat39/rust-tools.nvim'

	use  'folke/trouble.nvim'

end)

vim.cmd('highlight vimwikiHeader1 ctermfg=1')
vim.cmd('highlight vimwikiHeader2 ctermfg=2')
vim.cmd('highlight vimwikiHeader3 ctermfg=3')

vim.cmd('colorscheme ')


--[[
	require('onedark').setup {
	style = 'darker'
	}

	require('onedark').load()
]]--

require("mason").setup()
require("mason-lspconfig").setup()
require("symbols-outline").setup({
	opts = {
		highlight_hovered_item = true,
		show_guides = true,
		auto_preview = true,
		position = 'right',
		relative_width = true,
		width = 25,
		auto_close = false,
		show_numbers = true,
		show_relative_numbers = true,
		show_symbol_details = true,
		preview_bg_highlight = 'Pmenu',
		autofold_depth = nil,
		auto_unfold_hover = true,
		fold_markers = { '', '' },
		wrap = false,
		keymaps = { -- These keymaps can be a string or a table for multiple keys
			close = {"<Esc>", "q"},
			goto_location = "<Cr>",
			focus_location = "o",
			hover_symbol = "<C-space>",
			toggle_preview = "K",
			rename_symbol = "r",
			code_actions = "a",
			fold = "h",
			unfold = "l",
			fold_all = "W",
			unfold_all = "E",
			fold_reset = "R",
		},
		lsp_blacklist = {},
		symbol_blacklist = {},
		symbols = {
			File = { icon = "", hl = "@text.uri" },
			Module = { icon = "", hl = "@namespace" },
			Namespace = { icon = "", hl = "@namespace" },
			Package = { icon = "", hl = "@namespace" },
			Class = { icon = "", hl = "@type" },
			Method = { icon = "ƒ", hl = "@method" },
			
			Property = { icon = "", hl = "@method" },
			Field = { icon = "", hl = "@field" },
			Constructor = { icon = "", hl = "@constructor" },
			Enum = { icon = "", hl = "@type" },
			Interface = { icon = "", hl = "@type" },
			Function = { icon = "", hl = "@function" },
			Variable = { icon = "", hl = "@constant" },
			Constant = { icon = "", hl = "@constant" },
			String = { icon = "", hl = "@string" },
			Number = { icon = "#", hl = "@number" },
			Boolean = { icon = "", hl = "@boolean" },
			Array = { icon = "", hl = "@constant" },
			Object = { icon = "", hl = "@type" },
			Key = { icon = "", hl = "@type" },
			Null = { icon = "", hl = "@type" },
			EnumMember = { icon = "", hl = "@field" },
			Struct = { icon = "", hl = "@type" },
			Event = { icon = "", hl = "@type" },
			Operator = { icon = "", hl = "@operator" },
			TypeParameter = { icon = "", hl = "@parameter" },
			Component = { icon = "", hl = "@function" },
			Fragment = { icon = "", hl = "@constant" },
		}
	}
}
)
require("scrollbar").setup()
require("ranger-nvim").setup()

require('neo-tree').setup {
	filesystem = {
		filtered_items = {
			visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
			hide_dotfiles = false,
			hide_gitignored = true,
		},
	}
}

vim.cmd [[colorscheme rasmus]]

require'nvim-treesitter.configs'.setup {
	indent = {
		enable = true
	}
}
require("ibl").setup{
	char="$"
}




vim.cmd('source ~/.config/nvim/lua/lualine_conf.lua')
vim.cmd('source ~/.config/nvim/lua/lsp/init.lua')

vim.cmd('source ~/.config/nvim/lua/nvim-cmp.lua')
