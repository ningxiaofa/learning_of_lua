local test = {}
test.name = 'ning'
return test

-- ➜  4-lua-debug git:(main) ✗ redis-cli --ldb --eval ./tmp/script.lua
-- Lua debugging session started, please use:
-- quit    -- End the session.
-- restart -- Restart the script in debug mode again.
-- help    -- Show Lua script debugging commands.

-- * Stopped at 1, stop reason = step over
-- -> 1   local test = {}
-- lua debugger> 

