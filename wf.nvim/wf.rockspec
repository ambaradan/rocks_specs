local git_ref = "1.0.3"
local modrev = "1.0.3"
local specrev = "1"

local repo_url = "https://github.com/Cassin01/wf.nvim"

rockspec_format = "3.0"
package = "wf.nvim"
version = modrev .. "-" .. specrev

description = {
	summary = "wf.nvim is a new which-key like plugin for Neovim.",
	detailed = [[
]],
	labels = { "neovim", "nvim", "plugin" },
	homepage = "https://github.com/Cassin01/wf.nvim",
	license = "MIT",
}

dependencies = { "lua >= 5.1", "nvim-web-devicons" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "wf.nvim-" .. "v1.0.3",
}

if modrev == "scm" or modrev == "dev" then
	source = {
		url = repo_url:gsub("https", "git"),
	}
end

build = {
	type = "builtin",
	copy_directories = { "doc", "scripts" },
}
