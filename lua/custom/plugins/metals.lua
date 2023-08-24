return {
	'scalameta/nvim-metals',
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	config = function()
		-- Autocmd that will actually be in charging of starting the whole thing
		local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
		vim.api.nvim_create_autocmd("FileType", {
			-- NOTE: You may or may not want java included here. You will need it if you
			-- want basic Java support but it may also conflict if you are using
			-- something like nvim-jdtls which also works on a java filetype autocmd.
			pattern = { "scala", "sbt", "java" },
			callback = function()
				require("metals").initialize_or_attach({})
			end,
			group = nvim_metals_group,
		})
	end
}
