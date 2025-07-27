function shallowCopy(original)
    local copy = {}
    for k, v in pairs(original) do
        copy[k] = v
    end
    return copy
end

local test = {a = 1, b = {c = 2}}
local test1 = shallowCopy(test)

test.a = 10
print(test1.a)  -- 输出 1（基本类型独立）

test.b.c = 20
print(test1.b.c)  -- 输出 20（嵌套表仍是引用）