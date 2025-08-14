-- local test = {ning=1,xin=2,fa=3} -- table.remove 只能用于移除索引数组,关联数组不可用
local test = {1,2,3}

print("remove before")
for k,v in pairs(test) do
    print(k,v)
    if k == 2 then
        table.remove(test, k)
    end
    print(k,v) -- 即便上一行代码刚执行了移除该元素,但是k,v变量仍然存在; 只有回到循环开头,删除操作才生效;
end

-- print("remove after")
-- for k,v in pairs(test) do
--     print(k,v)
-- end

-- 输出结果:
-- (base) ➜  learning_of_lua git:(main) ✗ lua 4-数据类型/8-table/remove/table.remove.lua
-- remove before
-- 1       1
-- 1       1
-- 2       2
-- 2       2
-- (base) ➜  learning_of_lua git:(main) ✗ 
-- 解释 为什么输出的结果是这样 而不是 1 1 和 3 3


-- 1. table.remove会改变表的索引结构​​
-- 初始表：test = {[1]=1, [2]=2, [3]=3}
-- 当 k == 2时，执行 table.remove(test, 2)，此时：
-- 移除 test[2]（值为 2），后面的元素会​​前移​​。
-- 表变为：test = {[1]=1, [2]=3}（3的索引从 3变成 2）。

-- ​​2. pairs遍历的底层机制​​
-- pairs会先获取表的​​所有键​​，然后遍历。但在遍历过程中修改表（如删除元素），会导致后续遍历的键​​失效​​。
-- 你的代码中，pairs最初记录的键是 1, 2, 3，但删除 2后，3的索引变成 2，而 pairs仍会尝试访问原来的 3，但此时 3已不存在。

-- 3. ​​为什么 3没有输出？​​
-- pairs在遍历完 k=2后，会尝试访问 k=3，但此时 test[3]是 nil（因为 3已经被前移到 2），所以循环终止。

print("更正后---------------------------------")

local test1 = {1, 2, 3}

-- 正确做法：倒序遍历
for i = #test1, 1, -1 do
    print(i, test1[i])
    if i == 2 then
        table.remove(test1, i)
    end
    print(i, test1[i]) -- 只有实时用到table数组,才会生效;
end

-- 最终表状态
print("after remove:")
for k, v in pairs(test1) do
    print(k, v)
end