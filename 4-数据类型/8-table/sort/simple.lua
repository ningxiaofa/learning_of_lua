-- https://wiki.luatos.com/_static/lua53doc/manual.html#pdf-table.sort

-- table.sort (list [, comp])
-- 在表内从 list[1] 到 list[#list] 原地 对其间元素按指定次序排序。 
    -- 如果提供了 comp ， 它必须是一个可以接收两个列表内元素为参数的函数。 当第一个元素需要排在第二个元素之前时，返回真 （因此 not comp(list[i+1],list[i]) 在排序结束后将为真）。 
    -- 如果没有提供 comp， 将使用标准 Lua 操作 < 作为替代品。

-- 排序算法并不稳定； 即当两个元素次序相等时，它们在排序后的相对位置可能会改变。

local t = { 5, 2, 7, 3, 9 }

-- 默认排序方式（按照字典序）
table.sort(t)
for _, v in ipairs(t) do
    print(v)
end
print('------------')
-- 自定义排序方式，按照元素大小进行排序
table.sort(t, function(a, b)
    return a < b
end)
for _, v in ipairs(t) do
    print(v)
end

-- 输出结果：
-- 2
-- 3
-- 5
-- 7
-- 9
-- ------------
-- 2
-- 3
-- 5
-- 7
-- 9
-- 在第一个 for 循环中，使用默认的 table.sort() 函数按照字典序将 table 表排序。
-- 在第二个 for 循环中，使用自定义排序方式将 table 表按照元素大小进行排序。
