-- 不正确
function myFunction(myVariable)
    if myVariable == {} then
        return -- 如果 myVariable 等于 {}，立即退出函数
    end

    -- 如果 myVariable 不等于 {}，继续执行下面的代码
    print("myVariable 不等于 {}")
end


-- 正常可用
function myFunction1(myVariable)
    if next(myVariable) == nil then
        print("myVariable 等于 {}")
        return -- 如果 myVariable 等于 {}，立即退出函数
    end

    -- 如果 myVariable 不等于 {}，继续执行下面的代码
    print("myVariable 不等于 {}")
end

myFunction({})
myFunction1({})