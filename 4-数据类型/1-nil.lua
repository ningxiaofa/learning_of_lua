#!/Users/huangbaoyin/Documents/Env/lua/lua-5.4.4/src/lua

-- #nil#
-- nil（空）
-- nil 类型表示一种没有任何有效值，它只有一个值 -- nil，例如打印一个没有赋值的变量，便会输出一个 nil 值：
print(type(a)) -- nil

-- 对于全局变量和 table，nil 还有一个"删除"作用，给全局变量或者 table 表里的变量赋一个 nil 值，等同于把它们删掉，执行下面代码就知：
tab1 = {
    key1 = "val1",
    key2 = "val2",
    "val3"
}

for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end
-- 输出结果：-- 果然是关联数组，但是跟PHP中的关联数组的遍历输出顺序是不同的，而是PHP的数字索引是从0开始的.
-- 1 - val3
-- key2 - val2
-- key1 - val1

tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end
-- 输出结果：
-- 1 - val3
-- key2 - val2

-- nil 作比较时应该加上双引号 "：
-- > type(X)
-- nil
-- > type(X)==nil
-- false
-- > type(X)=="nil"
-- true
-- >

-- 疑问：
-- 交互式编程 -- 正常
-- 脚本式编程 -- 出现报错 
-- type(X)==nil -- /Users/huangbaoyin/Documents/Env/lua/lua-5.4.4/src/lua: ./4-数据类型/nil.lua:43: unexpected symbol near '=='

-- type(X)==nil 结果为 false 的原因是 type(X) 实质是返回的 "nil" 字符串，是一个 string 类型：
-- type(type(X))==string
