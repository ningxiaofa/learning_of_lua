#!/usr/local/bin/lua
print('hello world')
print("www.runoob.com")
print(123)

-- 输出结果
-- ➜  learning_of_lua git:(main) ✗ lua 基本语法/index.lua
-- hello world
-- www.runoob.com
-- 123
-- ➜  learning_of_lua git:(main) ✗ 


-- Note
-- 以上代码中，我们指定了 Lua 的解释器 /usr/local/bin directory。
-- 加上 # 号标记解释器会忽略它。接下来我们为脚本添加可执行权限
-- 同时注意，Lua 的解释器 /usr/local/bin directory 目录路径位置，要结合自己的环境设置
-- 比如，在本机的mac环境中，应该设置为 /Users/huangbaoyin/Documents/Env/lua/lua-5.4.4/src/lua