vim.cmd('source ~/.config/nvim/vimscript.vim')
vim.cmd('source ~/.config/nvim/keybinds.vim')


require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'rebelot/kanagawa.nvim'
    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {"SmiteshP/nvim-navic"},
        after = "nvim-web-devicons", -- keep this if you're using NvChad
        config = function()
            require("barbecue").setup()
        end
    })

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim"}
    }
    use {
  	'glepnir/dashboard-nvim',
  	event = 'VimEnter',
  	config = function()
  	require('dashboard').setup {
    }
  end,
  requires = {'nvim-tree/nvim-web-devicons'}
}
end)

vim.cmd("colorscheme nordic")
vim.cmd('highlight vimwikiHeader1 ctermfg=1')
vim.cmd('highlight vimwikiHeader2 ctermfg=2')
vim.cmd('highlight vimwikiHeader3 ctermfg=3')

