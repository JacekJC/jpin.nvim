local pins = {}

local m = {}


--m.pins = {}


function pin_buffer_to_index ( buffer, index )
   local temp = pins 
   local nind = tonumber(index)
   temp[nind] = buffer
   pins = temp
end

function m.pin_current_buffer(opts)
   local buf = vim.api.nvim_win_get_buf(0)
   pin_buffer_to_index(buf, opts.args)
end

function m.open_buffer_from_index (opts)
   local nind = tonumber(opts.args)
   local buf = pins[nind]
   if buf == nil then
      return 0
   end
   vim.api.nvim_win_set_buf(0, buf)
end

function m.print_buffers()
   for i,v in ipairs(pins) do
      print(i, v)
   end
end

function m.setup()
   vim.api.nvim_create_user_command("JPpin", m.pin_current_buffer, { nargs=1 })
   vim.api.nvim_create_user_command("JPopen", m.open_buffer_from_index, { nargs=1 })
   vim.api.nvim_create_user_command("JPprint", m.print_buffers, {})
end

return m

--return m
