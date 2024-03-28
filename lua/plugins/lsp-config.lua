return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"pyright",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
				cmd = { "pyright-langserver", "--stdio" },
			})
			-- vim.keymap.set('n', '<leader>lK', vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>lK", vim.lsp.buf.hover, { desc = "Display hover information" })
			vim.keymap.set("n", "<leader>lgd", vim.lsp.buf.definition, { desc = "[g]o to [d]efinition" })
			vim.keymap.set("n", "<leader>lgD", vim.lsp.buf.declaration, { desc = "[g]o to [D]eclaration" })
			vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.code_action, { desc = "Code [a]ction" })
			vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "[r]ename" })
		end,
	},
}
