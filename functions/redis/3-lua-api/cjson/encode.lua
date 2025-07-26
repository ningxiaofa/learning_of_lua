-- local cjson = require "cjson"
-- local mykey = KEYS[1]
-- local myvalue = redis.call("GET", mykey)
-- local mytable = cjson.decode(myvalue)
-- local json_str = cjson.encode(mytable)
-- redis.call("SET", "myresult", json_str)

-- 开启稀疏数组模式
local cjson = require "cjson"
cjson.encode_sparse_array(true)

local arr = {1, 2, nil, 4, nil, 6}
local encoded = cjson.encode(arr)
print(encoded)
-- Output: [1,2,null,4,null,6]

-- 通过redis-cli执行 [如果通过require方式, 就要手动加载cjson依赖库]
-- ➜  learning_of_lua git:(main) ✗ redis-cli -p 63790  eval "cjson.encode_sparse_array(true)       
-- local arr = {1, 2, nil, 4, nil, 6}
-- local encoded = cjson.encode(arr)
-- return encoded" 0
-- "[1,2,null,4,null,6]"
-- ➜  learning_of_lua git:(main) ✗ 
