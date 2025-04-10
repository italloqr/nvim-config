return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
        require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"astro",
                "bash",
                "c",
                "cmake",
                "clojure",
                "cpp",
                "css",
                "diff",
                "dockerfile",
                "gitignore",
                "go",
                "gomod",
                "gosum",
                "gowork",
                "html",
                "http",
                "javascript",
                "jsdoc",
                "json",
                "json5",
                "jsonc",
                "lua",
                "luadoc",
                "luap",
                "markdown",
                "markdown_inline",
                "python",
                "query",
                "regex",
                "ruby",
                "sql",
                "toml",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
                "vue",
                "yaml"
			},
			sync_install = false,
			auto_install = false,

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
		})
	end,
}
