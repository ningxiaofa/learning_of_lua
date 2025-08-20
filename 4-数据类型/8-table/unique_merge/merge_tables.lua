local function serialize(tbl)
    return table.concat(tbl, ",")  -- 转换为 "1,100,10" 格式的字符串
end

local function mergeTables(...)
    local new_table = {}
    local seen = {}  -- 用于记录已存在的元素标识

    -- 遍历所有输入表
    for _, tbl in ipairs({...}) do
        for _, item in ipairs(tbl) do
            local key = serialize(item)
            if not seen[key] then
                seen[key] = true
                table.insert(new_table, item)
            end
        end
    end

    return new_table
end

-- 示例数据
local table1 = {{1, 100, 10}, {2, 200, 20}}
local table2 = {{1, 100, 10}, {3, 300, 30}}  -- {1,100,10} 重复
local table3 = {{4, 400, 40}, {2, 200, 20}}  -- {2,200,20} 重复

-- 合并并去重
local new_table = mergeTables(table1, table2, table3)

-- 验证结果
for _, v in ipairs(new_table) do
    print(table.concat(v, ", "))
end
