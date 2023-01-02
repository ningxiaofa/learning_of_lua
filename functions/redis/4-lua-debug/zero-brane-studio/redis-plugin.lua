-- 只是用于zero-brane-studio的插件对redis进行调试

local redis = require 'redis'

-- add LDB's Continue command
redis.commands['ldbcontinue'] = redis.command('C')

-- script to be debugged
local script = [[
  local x, y = tonumber(ARGV[1]), tonumber(ARGV[2])
  local result = x * y
  return result
]]

local client = redis.connect('127.0.0.1', 6379)
client:script("DEBUG", "YES")
print(unpack(client:eval(script, 0, 6, 9)))
client:ldbcontinue()