local set = vim.opt


set.guicursor = ""

set.nu = true
set.relativenumber = true

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

set.smartindent = true

set.wrap = false

set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

set.hlsearch = false
set.incsearch = true

set.termguicolors = true

set.scrolloff = 8
set.signcolumn = "yes"
set.isfname:append("@-@")

set.updatetime = 50

set.colorcolumn = "80"

-- solucinar problema de highlight breack
set.redrawtime=10000

-- Copy/Paste/Cut
local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('v', 'y', '"*y')

--unicode characters in the file autoload/float.vim
set.encoding = 'utf-8'

--TextEdit might fail if hidden is not set.
set.hidden = true

--Some servers have issues with backup files, see #649.
set.writebackup = false

--Give more space for displaying messages.
set.cmdheight=2

-- no resaltar busqueda
-- set.nohlsearch = true

--Don't pass messages to |ins-completion-menu|.
set.shortmess='c'
set.mouse='a'

set.ruler = true
set.number = true

local no_buffers_menu=1

set.background='dark'
local t_Co=256
--let g:gruvbox_contrast_dark='soft'
--let g:gruvbox_invert_selection='0'
--let gruvbox_hls_cursor='green'
--highlight Normal guibg=none
set.mousemodel='popup'
set.guioptions='egmrti'

set.syntax='on'

-- Searching
set.ignorecase=true
set.smartcase=true

--fold depending indent
set.foldmethod='indent'
