local pins = [0,0,0,0]


local m = {}

function m.pin_buffer_to_index ( buffer, index )
   pins[index] = vim.api.nvim_buf_get_name(0)
end

function m.open_buffer_from_index ( index )
   if index < 0 or index > 3then
      return 0
   end
   if pins[index] == -1 then
      return 0
   end
   vim.api.nvim_open_win(pins[index], false, {})
end

return m
