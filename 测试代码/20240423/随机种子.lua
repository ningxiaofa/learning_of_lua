-- 使用当前时间作为种子
local time = os.time()
-- local time = 123
math.randomseed(time)

-- 生成随机数
local random1 = math.random()
print(random1)

-- 再次生成随机数
local random2 = math.random()
print(random2)

-- ➜  learning_of_lua git:(main) ✗ lua 测试代码/20240423/随机种子.lua
-- 0.79904873189023
-- 0.18964721720255
-- ➜  learning_of_lua git:(main) ✗ lua 测试代码/20240423/随机种子.lua
-- 0.99776382068953
-- 0.78815182427239
-- ➜  learning_of_lua git:(main) ✗ lua 测试代码/20240423/随机种子.lua
-- 0.22575305875321
-- 0.42836702489962
-- ➜  learning_of_lua git:(main) ✗ 

-- 如果注释掉  local time = os.time()
-- 解开注释 local time = 123

-- 输出结果:
-- ➜  learning_of_lua git:(main) ✗ lua 测试代码/20240423/随机种子.lua
-- 0.21405899041481
-- 0.52918196330622
-- ➜  learning_of_lua git:(main) ✗ lua 测试代码/20240423/随机种子.lua
-- 0.21405899041481
-- 0.52918196330622
-- ➜  learning_of_lua git:(main) ✗ lua 测试代码/20240423/随机种子.lua
-- 0.21405899041481
-- 0.52918196330622
-- ➜  learning_of_lua git:(main) ✗ lua 测试代码/20240423/随机种子.lua
-- 0.21405899041481
-- 0.52918196330622
-- ➜  learning_of_lua git:(main) ✗ 