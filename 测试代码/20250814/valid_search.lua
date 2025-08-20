local function serialize(tbl)
    return table.concat(tbl, ",")  -- 转换为 "1,100,10" 格式的字符串
end

local function oldScore(tbl, used)
    for _, item in ipairs(tbl) do
        local key = serialize(item)
        if not used[key] then
            used[key] = true
            break
        end
    end
end

local used = {}
local tbl_1 = {{1,100,10}, {2,200,20}}
oldScore(tbl_1, used)
print("\nUsed 1:")
for k,v in pairs(used) do
    print(k,v)
end

local tbl_2 = {{1,100,10}, {3,300,30}}
oldScore(tbl_2, used)
print("\nUsed 2:")
for k,v in pairs(used) do
    print(k,v)
end

print("\nUsed 3:")
local tbl_3 = {{4,400,40}, {2,200,20}}
oldScore(tbl_3, used)
for k,v in pairs(used) do
    print(k,v)
end