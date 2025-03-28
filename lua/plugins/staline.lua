return {
  'tamton-aquib/staline.nvim',
  config = function()
    require('staline').setup{
        mode_colors = {
            n = "#2bbb4f",
            i = "#986fec",
            c = "#e27d60",
            v = "#4799eb",
        },
        sections = {
            left = { '- ', '-mode', 'left_sep_double', ' ', 'branch' },
            mid  = { 'lsp','cwd', 'file_name' },
            right = { 'cool_symbol','right_sep_double', '-line_column' },
        },   
    }
  end
}