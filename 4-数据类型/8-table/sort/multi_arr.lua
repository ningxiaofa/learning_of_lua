-- 当table中元素为数组，通过元素的某个字段值大小进行排序 代码实现

-- 假设有一个 table 表 t，其中每个元素都是一个数组，如下：
local t = {
    {name = "Alice", age = 20},
    {name = "Bob", age = 18},
    {name = "Charlie", age = 22},
    {name = "David", age = 16},
    {name = "Eve", age = 24},
}

-- 我们要按照元素中 age 字段的大小对其进行排序，可以使用 Lua 的 table.sort() 函数，如下：
table.sort(t, function(a, b)
    return a.age < b.age
end)
-- 在这个示例中，我们通过自定义排序函数，使用 a.age 和 b.age 来比较两个元素中的 age 字段的大小，然后返回一个布尔值，指示这两个元素的排序关系。
-- 这个函数将按照 age 字段从小到大的顺序对 table 表进行排序。

-- 经过排序后，t 表将变为以下状态：
-- {
--     {name = "David", age = 16},
--     {name = "Bob", age = 18},
--     {name = "Alice", age = 20},
--     {name = "Charlie", age = 22},
--     {name = "Eve", age = 24},
-- }
-- 如此，我们就可以根据某个元素中的字段值大小对 table 表进行排序。


-- 上面代码的排序是否为稳定排序？
-- 在 Lua 中，table.sort() 函数采用的是不稳定排序算法。这意味着，在进行排序时，元素的相对顺序可能会发生改变。
-- 具体来说，假设我们有以下 table 表：
local t = {
    {name = "Alice", score = 90},
    {name = "Bob", score = 80},
    {name = "Charlie", score = 90},
    {name = "AA", score = 90},
    {name = "CC", score = 90},
}
-- 我们要按照 score 字段对其进行排序，可以使用以下代码：

table.sort(t, function(a, b)
    return a.score < b.score
end)

local function print(arr)
    for i = 1, #arr do
        for k, v in pairs(arr[i]) do
            io.write(k, "=", v, " ")
        end
        io.write("\n")
    end
end

print(t)

-- 经过排序后，t 表变为：
-- {
--     {name = "Bob", score = 80},
--     {name = "Alice", score = 90},
--     {name = "Charlie", score = 90},
-- }
-- 注意，Alice 和 Charlie 的 score 字段值相同，但在排序后的结果中，它们的顺序发生了改变。这表明 table.sort() 函数采用的是不稳定排序算法。
-- 如果需要进行稳定排序，可以在排序过程中保存元素的原始下标，并在比较大小相同的元素时，使用下标作为比较依据。这样可以保持元素的相对顺序不变。