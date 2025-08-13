local stgm_random_decode = {{[2]=1},{[2]=2},{[2]=0}} -- 定义多维数组 参见 4-数据类型/8-table/sort/multi_arr.lua
print("-------------------- before")
for k,v in pairs(stgm_random_decode) do
    print(k,v[2])
end
print("-------------------- after")
table.sort(stgm_random_decode, function(a, b)
    return a[2] < b[2] -- match_id大小排序,按照从小到大排序, < 表示正序, > 表示倒序
end)

for k,v in pairs(stgm_random_decode) do
    print(k,v[2])
end