local test = {}
test[#test + 1] = 1
test[#test + 1] = 2
for i,v in ipairs(test) do
    print(i,v)
end