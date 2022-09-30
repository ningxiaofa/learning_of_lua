#!/usr/local/bin/lua

print('hello world')
print("www.runoob.com")

-- /hello.lua
-- 出现如下报错
-- zsh: permission denied: ./hello.lua

-- 解决办法：添加执行权限
-- chmod +x hello.lua

-- /hello.lua
-- 出现如下报错
-- zsh: ./hello.lua: bad interpreter: /usr/local/bin/lua: no such file or directory
-- 错误原因：指定的目录下，并找不到lua文件 【可执行文件】
-- 解决办法，替换为自己本机的文件路径
-- 如： #!/Users/huangbaoyin/Documents/Env/lua/lua-5.4.4/src/lua
-- 参见 ./index1.lua

-- #注释#
-- 单行注释: --
-- 多行注释: --[[code here --]]
--[[ print(1)
print(1)
print(1)
sdfs --]]

print(1)
print(1)
print(1)
print(1)
print(1)

-- #标示符#
-- Lua 标示符用于定义一个变量，函数获取其他用户定义的项。标示符以一个字母 A 到 Z 或 a 到 z 或下划线 _ 开头后加上 0 个或多个字母，下划线，数字（0 到 9）。

-- 最好不要使用下划线加大写字母的标示符，因为Lua的保留字也是这样的。

-- Lua 不允许使用特殊字符如 @, $, 和 % 来定义标示符。 Lua 是一个区分大小写的编程语言。因此在 Lua 中 Runoob 与 runoob 是两个不同的标示符。以下列出了一些正确的标示符：
-- mohd         zara      abc     move_name    a_123
-- myname50     _temp     j       a23b9        retVal

-- 综上可知： lua跟php的变量标识符的约束基本是一样的【php要以$开头】，其他语言也多是如此
-- 而且PHP的变量命名也是区分大小写的。

-- #关键词#
-- 以下列出了 Lua 的保留关键词。保留关键字不能作为常量或变量或其他用户自定义标示符：

-- and	break	do	else
-- elseif	end	false	for
-- function	if	in	local
-- nil	not	or	repeat
-- return	then	true	until
-- while	goto		
-- 一般约定，以下划线开头连接一串大写字母的名字（比如 _VERSION）被保留用于 Lua 内部全局变量。

-- 可以看到，lua并没有很多的关键字，而且与php很多是相同的，甚至如js

-- #全局变量#
-- 在默认情况下，变量总是认为是全局的。
-- 全局变量不需要声明，给一个变量赋值后即创建了这个全局变量，访问一个没有初始化的全局变量也不会出错，只不过得到的结果是：nil。

print(b)
b = 10
print(b)
-- 输出
-- nil
-- 10

-- 如果你想删除一个全局变量，只需要将变量赋值为nil。
b = nil
print(b) -- nil 
-- 这样变量b就好像从没被使用过一样。换句话说, 当且仅当一个变量不等于nil时，这个变量即存在。
