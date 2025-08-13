-- local type1 = 1 < 2 ? "less" : "normal" -- 兜底结算类型 -- 不支持
-- print(type1)

-- 兜底结算类型
local type = "normal"
if (1 < 2) then
    type = "less"
end
print(type)