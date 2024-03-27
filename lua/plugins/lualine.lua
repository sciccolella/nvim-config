return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup({
      extension = {
        'neo-tree',
      },
      options = {
        theme = 'dracula',
         globalstatus = true,
      }
    })
  end
}
