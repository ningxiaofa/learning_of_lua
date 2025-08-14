local test = {["ning"]=1,xin=2,fa=3,4,5}

for k,v in pairs(test) do
    print(k,v)
end
-- 输出结果(可以看到,输出结果的顺序不固定, 先输出数字索引(有顺序), 后随机输出关联索引):
-- (base) ➜  learning_of_lua git:(main) ✗ lua 测试代码/20250812/table.remove.lua
-- 1       4
-- fa      3
-- xin     2
-- ning    1
-- (base) ➜  learning_of_lua git:(main) ✗ lua 测试代码/20250812/table.remove.lua
-- 1       4
-- fa      3
-- ning    1
-- xin     2
-- (base) ➜  learning_of_lua git:(main) ✗ lua 测试代码/20250812/table.remove.lua
-- 1       4
-- xin     2
-- ning    1
-- fa      3
-- (base) ➜  learning_of_lua git:(main) ✗ lua 测试代码/20250812/table.remove.lua
-- 1       4
-- fa      3
-- xin     2
-- ning    1
-- (base) ➜  learning_of_lua git:(main) ✗ lua 测试代码/20250812/table.remove.lua
-- 1       4
-- fa      3
-- xin     2
-- ning    1
-- (base) ➜  learning_of_lua git:(main) ✗ lua 测试代码/20250812/table.remove.lua
-- 1       4
-- fa      3
-- xin     2
-- ning    1
-- (base) ➜  learning_of_lua git:(main) ✗ lua 测试代码/20250812/table.remove.lua
-- 1       4
-- ning    1
-- xin     2
-- fa      3
print("--------------------------removed")
-- test["ning"] = nil  -- 直接赋 nil 删除
for k,v in pairs(test) do
    print(k,v)
end

print("-------------------------- 分割线 ---------------------")

local function removeValue(tbl, target)
    for i = #tbl, 1, -1 do  -- 倒序遍历避免索引错乱 (只能用于索引数组)
        if tbl[i] == target then
            table.remove(tbl, i)
        end
    end
end
local all_scores = {1,2,4,5}
local game_scores = {1,2,3,4,5}
local to_remove = {2,4}

for i=#to_remove,1,-1 do
    local rm_score = to_remove[i]
    removeValue(all_scores, rm_score)
    removeValue(game_scores, rm_score)
end

print("all_scores")
for k,v in pairs(all_scores) do
    print(k,v)
end

print("game_scores")
for k,v in pairs(game_scores) do
    print(k,v)
end

-- 输出结果:
-- (base) ➜  learning_of_lua git:(main) ✗ lua 测试代码/20250812/table.remove.lua
-- 1       4
-- 2       5
-- xin     2
-- ning    1
-- fa      3
-- --------------------------removed
-- 1       4
-- 2       5
-- xin     2
-- ning    1
-- fa      3
-- -------------------------- 分割线 ---------------------
-- all_scores
-- 1       1
-- 2       5
-- game_scores
-- 1       1
-- 2       3
-- 3       5
-- (base) ➜  learning_of_lua git:(main) ✗ 
