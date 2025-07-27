function deepCopy(original)
    if type(original) ~= "table" then return original end
    local copy = {}
    for k, v in pairs(original) do
        copy[deepCopy(k)] = deepCopy(v)
    end
    return copy
end

local test = {a = 1, b = {c = 2}}
local test1 = deepCopy(test)

test.b.c = 20
print(test1.b.c)  -- 输出 2（完全独立）