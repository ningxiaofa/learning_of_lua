-- #table（表）#

-- 在 Lua 里，table 的创建是通过 "构造表达式"[js, php等都是这个叫法] 来完成，最简单构造表达式是{}，用来创建一个空表。也可以在表里添加一些数据，直接初始化表:

-- 实例
-- -- 创建一个空的 table
local tbl1 = {}
print(tbl1) -- table: 0x142e0a5e0
 
-- -- 直接初始表
local tbl2 = {"apple", "pear", "orange", "grape"}
print(tbl2) -- table: 0x142e0a6f0

-- Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字或者是字符串。
-- 实例
a = {}
a["key"] = "value" -- 单双引号皆可，但是输出顺序有变[暂时推荐使用双引号]: key : value  10 : 33
-- a['key'] = "value" -- 输出顺序:  10 : 33   key : value
key = 10
a[key] = 22 -- 10 : 22
a[key] = a[key] + 11 -- 10 : 22 + 11 = 33 即 10 ：30
for k, v in pairs(a) do
    print(k .. " : " .. v) -- .. 拼接操作符
end
-- 输出
-- key : value
-- 10 : 33

-- 不同于其他语言的数组把 0 作为数组的初始索引，在 Lua 里表的默认初始索引一般以 1 开始。
-- 详情参见：
-- 数据结构与算法之美 - 05 | 数组：你知道为什么很多编程语言中数组都从0开始编号吗？
-- https://blog.csdn.net/william_n/article/details/103142069

local tbl = {"apple", "pear", "orange", "grape"}
for key, val in pairs(tbl) do
    print("Key", key)
end
-- Key     1
-- Key     2
-- Key     3
-- Key     4

-- table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil。
a3 = {}
for i = 1, 10 do
    a3[i] = i
end

a3["key"] = "val"
print(a3["key"]) -- val
print(a3["none"]) -- nil
