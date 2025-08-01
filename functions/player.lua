local math = require("math")

--设置时间种子
print(math.randomseed(30));
return

math.randomseed(ARGV[1]) 
-- 设置初始的生成时间
local create_time = 1567769563 - 3600*24*365*2.0 
local num = ARGV[2]
local user_id = ARGV[3]
for i=1, num do
  --生成1到60之间的随机数
  local interval = math.random(1, 60) 
  --产生1到112之间的随机数
  local temp = math.random(1, 112) 
  if (temp == 112) then
        --产生0到100之间的随机数
        temp = temp + math.random(0, 100) 
  end
  create_time = create_time + interval
  temp = temp + create_time / 10000000000
  redis.call('ZADD', KEYS[1], temp, user_id+i-1)
end
return 'Generation Completed'


-- redis-cli -h localhost -p 6379 --eval insert_user_scores.lua user_score , 30 100000 10000