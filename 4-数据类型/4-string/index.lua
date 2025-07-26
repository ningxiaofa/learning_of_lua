-- #string（字符串）#

-- #字符串由一对双引号或单引号来表示。#

string1 = "this is string1"
string2 = 'this is string2'

-- 也可以用 2 个方括号 "[[]]" 来表示"一块"字符串。
html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">菜鸟教程</a>
</body>
</html>
]]
print(html)
-- 输出结果：
-- <html>
-- <head></head>
-- <body>
--     <a href="http://www.runoob.com/">菜鸟教程</a>
-- </body>
-- </html>

-- #在对一个数字字符串上进行算术操作时，Lua 会尝试将这个数字字符串转成一个数字:#
------ Note: 不同版本下的输出表现不同

-- ➜  learning_of_lua git:(main) ✗ lua53
-- Lua 5.3.0  Copyright (C) 1994-2015 Lua.org, PUC-Rio
-- > print("2" + 6)
-- 8.0
-- > print("2" + "6")
-- 8.0
-- > print("-2e2" * "6")
-- -1200.0
-- > print("error" + 1)
-- stdin:1: attempt to perform arithmetic on a string value -- 尝试对字符串值执行算术
-- stack traceback: -- 堆栈回溯
--         stdin:1: in main chunk -- 在主块中
--         [C]: in ?
-- >

-- ➜  learning_of_lua git:(main) ✗ lua
-- Lua 5.4.4  Copyright (C) 1994-2022 Lua.org, PUC-Rio
-- > print("2" + 6)
-- 8
-- > print("2" + "6")
-- 8
-- > print("2 + 6")
-- 2 + 6
-- > print("-2e2" * "6")
-- -1200.0
-- > print("error" + 1)
-- stdin:1: attempt to add a 'string' with a 'number'
-- stack traceback:
--         [C]: in metamethod 'add'
--         stdin:1: in main chunk
--         [C]: in ?
-- > 

-- 以上代码中"error" + 1执行报错了，字符串连接使用的是 .. ，如：[跟PHP是不同的，PHP是用单个.来连接的]
-- > print("a" .. 'b')
-- ab
-- > print(157 .. 428)
-- 157428
-- > 

-- #使用 # 来计算字符串的长度，放在字符串前面，如下实例：#
-- > len = "www.runoob.com"
-- > print(#len)
-- 14
-- > print(#"www.runoob.com")
-- 14
-- >

-- print(#"www.runoob.com") -- 14
