-- #function（函数）#

-- 在 Lua 中，函数是被看作是"第一类值（First-Class Value）"，函数可以存在变量里:

-- 实例 -- [跟php，js的函数定义的关键字是相同的, 函数体是不同的, python 是以def为关键字开头，go定义函数的关键字是func，不同语言的方式是不相同的，只是记忆问题，最好能记忆，但是不要求强行记忆，记不住就查下]
function factorial1(n) -- 阶乘1, 递归实现
    if n == 0 then
        return 1
    else
        return n * factorial1(n - 1)
    end
end
print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))
-- 输出结果:
-- 120
-- 120

-- function 可以以匿名函数（anonymous function）的方式通过参数传递:
function testFun(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k, v));
    end
end

tab = {
    key1 = "val1",
    key2 = "val2"
};
testFun(tab, function(key, val) -- 匿名函数
    return key .. " = " .. val;
end);
-- key1 = val1
-- key2 = val2


-- 或则赋值为变量，php也支持，js也支持，很多语言，事物都是相互借鉴，学习的，这是世界运行的规律之一
test = function(para)
    print(para)
end
test(123)
-- 123

