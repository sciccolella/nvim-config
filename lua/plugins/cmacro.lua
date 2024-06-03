return {
	"sciccolella/cmacro.nvim",
	config = function()
		require("cmacro").setup()
	end,
	ft = { "c", "cpp" },
    lazy = true,
}
