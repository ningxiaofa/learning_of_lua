local redis = require 'redis'
local host = "127.0.0.1"
local port = 6379

-- 定义为global 否则redis.call无法调用
client = redis.connect(host, port)

local response = client:ping()  
print(("response: %s"):format(response))

redis.call = function(cmd, ...) 
    return assert(load('return client:'.. string.lower(cmd) ..'(...)'))(...)
end

local hk = 'etlpre_test_p0'
local isExists = client:exists(hk)
local h = redis.call("exists", hk)
print(h)

-- 先判断key是否已经存在
if not isExists then 
  print(package.path)
end


-- redis-cli -h localhost -p 6379 --eval insert_user_scores.lua user_score , 30 100000 10000