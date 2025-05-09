local git_ref = "5820d937d5414baea5f586dc2a3d912a74636e5b"
local modrev = "scm"
local specrev = "1"

local repo_url = "https://github.com/toppair/peek.nvim"

rockspec_format = "3.0"
package = "peek.nvim"
version = modrev .. "-" .. specrev

description = {
	summary = "Markdown preview plugin for Neovim",
	detailed = "",
	labels = { "neovim" },
	homepage = "https://github.com/toppair/peek.nvim",
	license = "MIT",
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "peek.nvim-" .. git_ref,
}

if modrev == "scm" or modrev == "dev" then
	source = {
		url = repo_url:gsub("https", "git"),
	}
end

build = {
	type = "builtin",
	copy_directories = { "colors" },
}
