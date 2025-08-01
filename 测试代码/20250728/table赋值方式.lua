-- local matches = {}
-- matches["a"] = 1
-- matches["b"] = 2
-- -- 注:ipairs只能遍历数字索引
-- for i,v in pairs(matches) do
--     print(i ..":".. v)
-- end

-- local a = {}
-- a["key"] = "value"
-- key = 10
-- a[key] = 22
-- a[key] = a[key] + 11
-- a["test"] = 11
-- for k, v in pairs(a) do
--     print(k .. " : " .. v)
-- end

local game_score = 1000
local game_scores = {}
-- game_scores[#game_scores + 1] = {game_score=game_score} -- 赋值方式一;
game_scores[#game_scores + 1] = {["game_score"]=game_score} -- 赋值方式二;
for i,v in pairs(game_scores) do
    print(i ..":".. v.game_score)
end