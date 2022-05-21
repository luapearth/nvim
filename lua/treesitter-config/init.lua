require'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all"
	ensure_installed = { "lua", "typescript", "javascript", "python" },

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	highlight = {
		enable = true,

		additional_vim_regex_highlighting = false,
	},
	refactor = {
		highlight_definitions = { enable = true, clear_on_cursor_move = true, },
		smart_rename = {
			enable = true,
			keymaps = {
				smart_rename = "grr",
			},
		},
		navigation = {
			enable = true,
			keymaps = {
				goto_definition = "gnd",
				list_definitions = "gnD",
				list_definitions_toc = "gO",
				goto_next_usage = "<A-*>",
				goto_previous_usage = "<A-#>",
			},
		},
	},
	autotag = { enable = true, },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
        config = {
            javascript = {
                __default = '// %s',
                __multiline = '/* %s */',
                jsx_element = '{/* %s */}',
                jsx_fragment = '{/* %s */}',
                jsx_attribute = '// %s',
                comment = '// %s',
            },
            -- typescript = {
            --     __default = '// %s',
            --     __multiline = '/* %s */',
            --     jsx_element = '{/* %s */}',
            --     jsx_fragment = '{/* %s */}',
            --     jsx_attribute = '// %s',
            -- },
        },
    }
}
