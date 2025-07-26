-- print(b)
local __test = {}

function printTest()
    __test['name'] = 'william'
    __test['age'] = 30
    for k, v in pairs(__test) do
        print(k .. " : " .. v) -- .. 拼接操作符
    end
end

printTest()

for k, v in pairs(__test) do
    print(k .. " : " .. v) -- .. 拼接操作符
end

-- exec result:
-- ➜  learning_of_lua git:(main) ✗ lua 5-变量/test.lua
-- age : 30
-- name : william
-- age : 30
-- name : william
-- ➜  learning_of_lua git:(main) ✗ 