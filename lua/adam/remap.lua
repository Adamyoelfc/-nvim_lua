local map = vim.keymap.set


vim.g.mapleader = ' '
-------------------------------------------------------------------

map("n", "<leader>'", vim.cmd.q)
map("n", "<leader>,", vim.cmd.Ex)

-- nerdtree mappings
map("n", '<leader>.', vim.cmd.NERDTreeToggle)
map("n", '<leader>t', '<Plug>(easymotion-s2)')

--move lines selected up and down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

--put cursor in the middle when press C-d
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

--put cursor in the middle when search
map("n", "n", "nzzzn")
map("n", "N", "Nzzzv")

--paste without lose the first copy
map("x", "<leader>p", "\"_dP")


vim.g.mapleader = '.'
-------------------------------------------------------------------
map("n", "<leader>pa", vim.cmd.Prettier)
-- map("n", "<leader>pa", vim.cmd.LspZeroFormat)
map("n", '<leader>ww', vim.cmd.wa)


-- terminal emulation
map("n", '<leader>sh', vim.cmd.terminal, { silent = true })
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

map({ 'n', 't' }, '<M-Tab>', function()
    if (vim.api.nvim_win_get_config(0).relative ~= '') then
        vim.api.nvim_input('<ESC>')
    end
    require('FTerm').toggle()
end, NOREF_NOERR_TRUNC)

vim.api.nvim_input('<ESC>')

--execute python file
map("n", '<leader>pp', ':w<CR>:!python3 %<CR>')

--execute js file
map("n", "<leader>jj", ":w<CR>:!node %<CR>")

--atajo para goyo
map("n", '<leader>go', ':Goyo<CR>')

--Grep Finder in filetype
map("n", '<leader>fa', ':Grep<CR>')
map("n", '<leader>n ', ':cnext<CR>')
map("n", '<leader>ff', ':Ag<CR>')

-- Git
map("n", '<leader>ga', ':Git add .<CR>')
map("n", '<leader>gsh', ':Git push<CR>')
map("n", '<leader>gll', ':Git pull<CR>')
map("n", '<leader>gs', ':Git status<CR>')
map("n", '<leader>gb', ':Git blame<CR>')
map("n", '<leader>gdif', ':Git diff<CR>')
map("n", '<leader>gr', ':Git remove<CR>')
-- Open current line on GitHub
map("n", '<leader>o', ':GBrowse<CR>')

--session management
map("n", '<leader>so', ':OpenSession<Space>')
map("n", '<leader>ss', ':SaveSession<Space>')
map("n", '<leader>sd', ':DeleteSession<CR>')
map("n", '<leader>sc', ':CloseSession<CR>')
map("n", '<leader>h', ':<C-u>split<CR>')
map("n", '<leader>v', ':<C-u>vsplit<CR>')

-- Tabs
map("n", '<Tab>', 'gt')
map("n", '<S-Tab>', 'gT')
map("n", '<S-t>', ':tabnew<CR>')

-- Set working direcory
map("n", '<leader>.', ':lcd %:p:h<CR>')

-- Opens an edit comand with the path of the currently edited file filled in
-- map("n", '<leader>e', ':e <C-R>=expand("%:p:h")')

-- Opens a tab edit ommand with the path of the currently edited file filled
-- map("n", '<leader>te', ':tabe <C-R>=expand("%:p:h")')


--Buffer and file
map("n", '<C-P>', '<C-R>=expand("%:p:h")') --. "/--<CR>
map("n", '<leader>b', ':Buffers<CR>')
-- Buffer nav
map("n", '<leader>z', ':bp<CR>')
map("n", '<leader>q', ':bp<CR>')
map("n", '<leader>x', ':bn<CR>')
map("n", '<leader>w', ':bn<CR>')
-- Close buffer                      )
map("n", '<leader>c', ':bd<CR>')
--cambiado porm
map("n", '<leader>e', ':GFiles<CR>')
map("n", '<leader>fi', ':Files<CR>')
--Recovery commands rom history through FZF
map("n", '<leader>y', ':History:<CR>')

--Tagbar
map("n", '<F4>', ':TagbarToggle<CR>')

-- Switching windowsWindows
map("n", '<C-j>', '<C-w>j', { noremap = true })
map("n", '<C-k>', '<C-w>k', { noremap = true })
map("n", '<C-l>', '<C-w>l', { noremap = true })
map("n", '<C-h>', '<C-w>h', { noremap = true })

--rezise windows
map("n", '<leader>>', '<C-w>10>')
map("n", '<leader><', '<C-w>10<')

-- Vmap for maintain Visual Mode after shifting > and <
map("v", '<', '<gv')
map("v", '>', '>gv')

-- Move visual block
map("n", 'J', ":m '>+1<CR>gv=gv")
map("n", 'K', ":m '<-2<CR>gv=gv")
