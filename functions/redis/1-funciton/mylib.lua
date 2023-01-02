#!lua name=mylib

local function my_hset(keys, args)
  local hash = keys[1]
  local time = redis.call('TIME')[1]
  return redis.call('HSET', hash, '_last_modified_', time, unpack(args))
end

redis.register_function('my_hset', my_hset)

-- Exec way
-- cat mylib.lua | redis-cli -x FUNCTION LOAD REPLACE

-- Output
-- ➜  1-funciton git:(main) ✗ cat mylib.lua | redis-cli -x FUNCTION LOAD REPLACE
-- "mylib"
-- ➜  1-funciton git:(main) ✗ 

-- 127.0.0.1:6379> FCALL my_hset 1 myhash myfield "some value" another_field "another value"
-- (integer) 3
-- 127.0.0.1:6379> FCALL my_hset 1 myhash myfield "some value" another_field "another value"
-- (integer) 0 -- 因为无更新
-- 127.0.0.1:6379> HGETALL myhash
-- 1) "_last_modified_"
-- 2) "1672369989"
-- 3) "myfield"
-- 4) "some value"
-- 5) "another_field"
-- 6) "another value"
-- 127.0.0.1:6379> 
