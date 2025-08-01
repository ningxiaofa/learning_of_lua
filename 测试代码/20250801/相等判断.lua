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

ret = tableExist({1,2,3}, "1")
print(ret) -- false
ret = tableExist({1,2,3}, 1)
print(ret) -- true

local is_fallback = true
if is_fallback == true then
print(1)
end

print("---------")
local scores = {}
function test(scores)
    scores[1] = 1
    scores[2] = 2
end
test(scores)
for i,v in ipairs(scores) do
    print(i,v)
end

print("---------")
for i=1,1 do
    print(i)
end
