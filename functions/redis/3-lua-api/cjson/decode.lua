local cjson = require("cjson")

local sampleJson = [[{"age":"18","testArray":{"array":[8,9,11,14,25]},"blog":"https://icocoro.me"}]]
local data = cjson.decode(sampleJson)
print(data["age"])
print(data["testArray"]["array"][1])