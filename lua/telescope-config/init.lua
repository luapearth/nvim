require'telescope'.setup {
    defaults = {
        prompt_prefix = "$ ",

        file_ignore_patterns = {"^./.git/", "^node_modules/"},
    }
}

require('telescope').load_extension('fzf')
