local function split(s, p)
    local rt= {}
    --log(s,p)
    string.gsub(s, '[^' .. p .. ']+', function(w) table.insert(rt, w) end)
    return rt
end

local function getCollectName(key)
	local collect_name = "__schedule_list"
	if key ~= nil then
		local key_arr = split(key,"_")
		local index = key_arr[#key_arr] % 10
		collect_name = collect_name..index
	else
		collect_name = collect_name..'0'
	end
	return collect_name
end

local ret = getCollectName('test_123')
print(ret)