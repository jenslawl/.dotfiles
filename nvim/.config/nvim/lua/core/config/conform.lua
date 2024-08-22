require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		go = { "gofmt" },
		javascript = { { "prettierd", "prettier" } },
		c = { "clang-format" },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
})
