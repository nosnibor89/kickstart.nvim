return {
	'github/copilot.vim',
	config = function()
		vim.g.copilot_node_command = '$HOME/.nvm/versions/node/v16.20.1/bin/node'
		vim.g.copilot_no_tab_map = true
		vim.keymap.set("i", "<C-J>", 'copilot#Accept("\\<CR>")', { silent = true, expr = true })
	end
}
