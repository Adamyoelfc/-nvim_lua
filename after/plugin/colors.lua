function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)
end

--erevrforest config
if (vim.g.colors_name == 'everforest') then
    vim.g.everforest_background = 'hard'
end

--reso-pine config
if (vim.g.colors_name == 'rose-pine') then
    vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
end


ColorMyPencils('everforest')
