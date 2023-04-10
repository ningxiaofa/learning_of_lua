local arr = {1, 2, 3}

-- 我们可以使用 for 循环语句打印数组中的每个元素：
for i = 1, #arr do
    io.write(arr[i], " ")
    io.write("\n")
end

-- ➜  learning_of_lua git:(main) ✗ lua 4-数据类型/8-table/print/一维数组/一维索引数组.lua
-- 1 
-- 2 
-- 3 
-- ➜  learning_of_lua git:(main) ✗ 