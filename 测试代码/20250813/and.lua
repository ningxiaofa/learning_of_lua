local game_score = 100
-- local min_score = 1
local min_score = 101
local max_score = 1000
-- 没问题, 跟php一样的运算, 短路运算!
if game_score > min_score and game_score < max_score then
    print("yep")
end

