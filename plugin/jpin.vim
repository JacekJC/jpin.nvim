if exists("g:loaded_jpin")
   finish
end
let g:loaded_jpin = 1

let s:lua_rocks_deps_loc = expand("<sfile>:h:r") . "/../lua/jpin/deps"
exe "lua package.path = package.path .. ';" . s:lua_rocks_deps_loc . "/lua-?/init.lua"

command! -nargs=1 PinA lua require('jpin').pin_buffer_to_index();
command! -nargs=1 PinA lua require('jpin').pin_buffer_to_index();
