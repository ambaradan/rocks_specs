local git_ref = "bc820e4d043d653fdda10849b2f7c5866ed31b98"
local modrev = "scm"
local specrev = "1"

local repo_url = "https://github.com/chrisgrieser/nvim-tinygit"

rockspec_format = "3.0"
package = "nvim-tinygit"
version = modrev .. "-" .. specrev

description = {
	summary = "A lightweight bundle of Git commands",
	detailed = "",
	labels = { "neovim" },
	homepage = "https://github.com/chrisgrieser/nvim-tinygit",
	license = "MIT",
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "nvim-tinygit-" .. git_ref,
}

if modrev == "scm" or modrev == "dev" then
	source = {
		url = repo_url:gsub("https", "git"),
	}
end

build = {
	type = "builtin",
	copy_directories = { "doc" },
}
