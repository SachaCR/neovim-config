return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function () 
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = {}, -- optional extra ignore patterns
      },
      pickers = {
        find_files = {
          find_command = { 'fd', '--type', 'f', '--hidden', '--strip-cwd-prefix' },
        },
      },
    })

    vim.keymap.set('n', "<leader>p", "<cmd>Telescope git_files<cr>", {})
    vim.keymap.set('n', "<leader>f", "<cmd>Telescope find_files<cr>", {})
  end
}
