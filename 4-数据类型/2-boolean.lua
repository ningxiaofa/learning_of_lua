-- #boolean（布尔）#
-- boolean 类型只有两个可选值：true（真） 和 false（假），Lua 把 false 和 nil 看作是 false，其他的都为 true，数字 0 也是 

print(type(true)) -- boolean
print(type(false))-- boolean
print(type(nil))  -- nil
 
if false or nil then
    print("至少有一个是 true")
else
    print("false 和 nil 都为 false")
end
-- false 和 nil 都为 false

if 0 then
    print("数字 0 是 true")
else
    print("数字 0 为 false")
end
-- 数字 0 是 true

