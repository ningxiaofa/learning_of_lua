local game_scores = {110, 102, 103}
local game_score = 101

local found = false
for _, score in ipairs(game_scores) do
    if score == game_score then
        found = true
        break
    end
end

if found then
    print("分数存在")
else
    print("分数不存在")
end
--分数不存在

function tableExist(array, target)
    local found = false
    for _, e in pairs(array) do
        if e == target then
            found = true
            break
        end
    end
    return found
end

local found = tableExist({110, 102, 103,["test"]=1},1)
print(found)
-- true