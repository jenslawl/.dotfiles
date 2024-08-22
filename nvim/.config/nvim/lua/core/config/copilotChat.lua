vim.g.copilot_no_tab_map = true
vim.g.copilot_hide_during_completion = 0
vim.g.copilot_proxy_strict_ssl = 0
vim.keymap.set("i", "<S-Tab>", "copilot#Accept()", { expr = true, replace_keycodes = false })
require("CopilotChat.integrations.cmp").setup()
require("CopilotChat").setup({
	debug = true,
	mappings = {
		-- Use tab for completion
		complete = {
			detail = "Use @<Tab> or /<Tab> for options.",
			insert = "<Tab>",
		},
		-- Close the chat
		close = {
			normal = "q",
			insert = "<C-c>",
		},
		-- Reset the chat buffer
		reset = {
			normal = "<C-x>",
			insert = "<C-x>",
		},
		-- Submit the prompt to Copilot
		submit_prompt = {
			normal = "<CR>",
			insert = "<C-CR>",
		},
		-- Accept the diff
		accept_diff = {
			normal = "<C-y>",
			insert = "<C-y>",
		},
		-- Yank the diff in the response to register
		yank_diff = {
			normal = "gmy",
		},
		-- Show the diff
		show_diff = {
			normal = "gmd",
		},
		-- Show the prompt
		show_system_prompt = {
			normal = "gmp",
		},
		-- Show the user selection
		show_user_selection = {
			normal = "gms",
		},
	},
	prompts = {
		Review = {
			callback = function() end,
		},
	},
})
