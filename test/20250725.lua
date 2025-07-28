local matches = {}
matches["a"] = 1
matches["b"] = 2
-- 注:ipairs只能遍历数字索引
for i,v in pairs(matches) do
    print(i ..":".. v)
end

local a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
a["test"] = 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end