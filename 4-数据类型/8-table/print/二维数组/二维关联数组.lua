-- lua 打印二维数组 二维数组中为关联数组 有字符串key

-- 在 Lua 中，二维数组可以使用关联数组实现，其中每个元素都是一个关联数组。当关联数组的 key 为字符串时，可以使用 pairs() 函数对数组进行遍历。
-- 例如，假设我们有以下二维数组 arr：
local arr = {
    {name = "Alice", age = 20},
    {name = "Bob", age = 18},
    {name = "Charlie", age = 22},
    {name = "David", age = 16},
    {name = "Eve", age = 24},
}

-- local arr = {
--     {1, 2, 3},
--     {4, 5, 6},
--     {7, 8, 9},
-- }

-- 我们可以使用以下代码打印数组中的每个元素：
for i = 1, #arr do
    for k, v in pairs(arr[i]) do
        io.write(k, "=", v, " ")
    end
    io.write("\n")
end

-- 在这个示例中，我们使用第一个 for 循环语句遍历数组中的每一行，使用第二个 for 循环语句遍历每一行中的每个元素。
-- k 是关联数组的 key，v 是关联数组的 value，io.write() 函数用于打印每个元素，"=" 是分隔符，" " 是空格符，"\n" 是换行符。

-- 执行上述代码后，将对关联数组进行打印，输出结果为：
-- ➜  learning_of_lua git:(main) ✗ lua 4-数据类型/8-table/print/二维数组/二维关联数组.lua
-- name=Alice age=20 
-- name=Bob age=18 
-- name=Charlie age=22 
-- name=David age=16 
-- name=Eve age=24 
-- ➜  learning_of_lua git:(main) ✗ 

-- 如此，我们就可以使用 pairs() 函数遍历 Lua 中的关联数组，并打印二维数组中的每个元素。

-- 注意，
-- for k, v in pairs(arr[i]) do
--     io.write(k, "=", v, " ")
-- end
-- 函数也能打印索引数组!!!