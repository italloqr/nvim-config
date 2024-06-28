require("neotest").setup({
	adapters = {
		require("neotest-jest")({
			jestCommand = "yarn test --",
			jestConfigFile = "custom.jest.config.ts",
			env = { CI = true },
			cwd = function(path)
				return vim.fn.getcwd()
			end,
		}),
	},
})
