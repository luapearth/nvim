require 'settings'
require 'mappings'
require 'colorschemes-config.nightfox'
require 'packer-config'
require 'nvim-tree-config'
require 'lsp-config.language-servers'
require 'lsp-config.nvim-cmp'
require 'lualine-config'
require 'treesitter-config'
require 'telescope-config'
require 'formatting-config.indent_config'
require 'lsp-config.null-ls'
require 'term-config'
require 'bufferline-config'

-- Config

require 'Comment'.setup {
    pre_hook = function(ctx)
        local U = require 'Comment.utils'

        local location = nil
        if ctx.ctype == U.ctype.block then
            location = require('ts_context_commentstring.utils').get_cursor_location()
        elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
            location = require('ts_context_commentstring.utils').get_visual_start_location()
        end

        return require('ts_context_commentstring.internal').calculate_commentstring {
            key = ctx.ctype == U.ctype.line and '__default' or '__multiline',
            location = location,
        }
    end,
}

require 'bufdel'.setup {
    next = 'cycle',
    quit = true,
}
