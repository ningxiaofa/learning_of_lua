local local_app = "15"
local game_type = string.sub(local_app, 1, 1)
print(game_type, type(game_type))
local end_number = game_type + 2
print(end_number, type(end_number))

-- 输出
-- 1       string
-- 3       number