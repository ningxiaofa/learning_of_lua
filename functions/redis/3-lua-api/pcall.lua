local reply = redis.pcall('ECHO', unpack(ARGV))
if reply['err'] ~= nil then
  -- Handle the error sometime, but for now just log it
  redis.log(redis.LOG_WARNING, reply['err'])
  reply['err'] = 'Something is wrong, but no worries, everything is under control'
end
return reply

-- ➜  3-lua-api git:(main) ✗ redis-cli --eval pcall.lua 0
-- (error) Something is wrong, but no worries, everything is under control
-- ➜  3-lua-api git:(main) ✗ 

-- Redis 的日志
-- 2022-12-30 11:40:15 1:M 30 Dec 2022 03:40:15.257 * DB saved on disk
-- 2022-12-30 13:21:33 1:M 30 Dec 2022 05:21:33.714 # ERR Wrong number of args calling Redis command from script
-- 2022-12-30 13:21:49 1:M 30 Dec 2022 05:21:49.562 # ERR Wrong number of args calling Redis command from script
