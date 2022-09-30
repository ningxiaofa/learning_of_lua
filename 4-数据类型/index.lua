#!/Users/huangbaoyin/Documents/Env/lua/lua-5.4.4/src/lua

-- Lua 是动态类型语言，变量不要类型定义,只需要为变量赋值。 值可以存储在变量中，作为参数传递或结果返回。
-- Lua 中有 8 个基本类型分别为：nil、boolean、number、string、userdata、function、thread 和 table。

-- #数据类型列表#
-- 数据类型	  描述
-- nil	    这个最简单，只有值nil属于该类，表示一个无效值（在条件表达式中相当于false）。 [相当于PHP中的null，但是还是有些不同，PHP中使用未定义的变量，会出现警告，脚本继续执行, 参见 4-数据类型/index.php]
-- boolean	包含两个值：false和true。
-- number	表示双精度类型的实浮点数 [相当于php中的int+float]
-- string	字符串由一对双引号或单引号来表示
    -- function	由 C 或 Lua 编写的函数
    -- userdata	表示任意存储在变量中的C数据结构
-- thread	表示执行的独立线路，用于执行协同程序
-- table	Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字、字符串或表类型。在 Lua 里，table 的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表。

-- #检测数据类型#
-- 我们可以使用 type 函数测试给定变量或者值的类型：
--[[
    在JavaScript中，使用 typeof 可以检测基本数据类型，使用instanceof可以检测引用数据类型。

    在PHP中，也有检测数据类型的方法，方式如下：
    1、输出变量的数据类型(gettype)
    2. 检测某个变量是否是指定的数据类型(is_array、is_string、is_int、is_double等)，如果为真返回1，如果为假返回空。
    参见./index.php
--]]

-- 输出结果见右侧的注释
print(type("Hello world")) -- string
print(type(10.4*3))        -- number
print(type(print))         -- function
print(type(type))          -- function
print(type(true))          -- boolean
print(type(nil))           -- nil
print(type(type(X)))       -- string

