-- 在 Lua 中，可以使用 for 循环语句对二维数组进行打印操作。

-- 例如，假设我们有一个二维数组 arr：
local arr = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9},
}

-- 我们可以使用 for 循环语句打印数组中的每个元素：
for i = 1, #arr do
    for j = 1, #arr[i] do
        io.write(arr[i][j], " ")
    end
    io.write("\n")
end
-- 在这个示例中，第一个 for 循环语句用于遍历数组 arr 的每一行，第二个 for 循环语句用于遍历每一行中的每个元素。io.write() 函数用于打印每个元素，" " 是分隔符，"\n" 是换行符。
-- 执行上述代码后，将对数组进行打印，输出结果为：
-- ➜  learning_of_lua git:(main) ✗ lua 4-数据类型/8-table/print/二维数组/二维索引数组.lua
-- 1 2 3 
-- 4 5 6 
-- 7 8 9 
-- ➜  learning_of_lua git:(main) ✗ 
-- 如此，我们就可以使用 for 循环语句对 Lua 中的二维数组进行打印。

