-- autoreload Kitty with ~/.config/kitty/kitty.conf
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "kitty.conf" },
	callback = function()
		vim.cmd("silent !kill -SIGUSR1 $(pgrep -a kitty)")
	end,
})
