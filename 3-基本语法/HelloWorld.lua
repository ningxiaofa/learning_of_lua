print("Hello World!")

-- 交互式编程 
-- Lua 提供了交互式编程模式。我们可以在命令行中输入程序并立即查看效果。

-- Lua 交互式编程模式可以通过命令 lua -i 或 lua 来启用：
-- $ lua -i 
-- $ Lua 5.3.0  Copyright (C) 1994-2015 Lua.org, PUC-Rio
-- > 

-- 在命令行中，输入以下命令:
-- > print("Hello World！")
-- 接着我们按下回车键，输出结果如下：

-- > print("Hello World！")
-- Hello World！
-- >

-- PHP也支持
-- https://www.php.net/manual/zh/features.commandline.interactive.php
-- ➜  code php -a
-- Interactive shell

-- php > echo "hello world"
-- php > ;
-- hello world
-- php > 


-- 脚本式编程
-- 我们可以将 Lua 程序代码保存到一个以 lua 结尾的文件，并执行，该模式称为脚本式编程，如我们将如下代码存储在名为 hello.lua 的脚本文件中：

-- 我们也可以将代码修改为如下形式来执行脚本（在开头添加：#!/usr/local/bin/lua）：---- 参见index.lua
-- #!/usr/local/bin/lua

-- print("Hello World！")
-- print("www.runoob.com")

-- Note:
-- 通常解释性脚本语言，都支持交互式编程和脚本式编程
-- 有，php, python, lua, js等
