a = {}
a["key"] = "value" -- 单双引号皆可，但是输出顺序有变[暂时推荐使用双引号]: key : value  10 : 33
-- a['key'] = "value" -- 输出顺序:  10 : 33   key : value
key = 10
a[key] = 22 -- 10 : 22
a[key] = a[key] + 11 -- 10 : 22 + 11 = 33 即 10 ：30
for k, v in pairs(a) do
    print(k .. " : " .. v) -- .. 拼接操作符
end

-- ➜  learning_of_lua git:(main) ✗ lua 4-数据类型/8-table/print/一维数组/一维关联数组.lua
-- key : value
-- 10 : 33
-- ➜  learning_of_lua git:(main) ✗ 