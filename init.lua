require("settings")
require("mappings")
require("colorschemes-config.nightfox")
require("packer-config")
require("nvim-tree-config")
require("lsp-config.language-servers")
require("lsp-config.nvim-cmp")
require("lualine-config")
require("treesitter-config")
require("telescope-config")
require("formatting-config.indent_config")
require("lsp-config.null-ls")
require("term-config")
require("bufferline-config")
require("gitsigns-config")

-- Config

require("Comment").setup({})

require("bufdel").setup({
    next = "cycle",
    quit = true,
})
