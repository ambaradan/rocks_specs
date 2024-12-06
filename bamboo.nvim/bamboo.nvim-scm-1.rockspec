local git_ref = "d38c50257d9fb16b17050569b29d777b1f2503ee"
local modrev = "scm"
local specrev = "1"

local repo_url = "https://github.com/ribru17/bamboo.nvim"

rockspec_format = "3.0"
package = "bamboo.nvim"
version = modrev .. "-" .. specrev

description = {
	summary = "Dark green theme for Neovime",
	detailed = "",
	labels = { "neovim" },
	homepage = "https://github.com/ribru17/bamboo.nvim",
	license = "MIT",
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "bamboo.nvim-" .. "d38c50257d9fb16b17050569b29d777b1f2503ee",
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
