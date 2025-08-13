local total_ema = 339592
local ret = math.floor(total_ema / 20000) * 20000
local ret1 = math.ceil(total_ema / 20000) * 20000
print(ret, ret1) -- 320000  340000