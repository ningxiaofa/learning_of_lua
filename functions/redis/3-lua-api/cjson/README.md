如何测试执行如下lua脚本 [tbd,还有问题]
```
local cjson = require "cjson"
local mykey = KEYS[1]
local myvalue = redis.call("GET", mykey)
local mytable = cjson.decode(myvalue)
local json_str = cjson.encode(mytable)
redis.call("SET", "myresult", json_str)
```

如果你想测试这段代码，可以按照以下步骤进行：
1. 启动 Redis 服务，并在 Redis 命令行界面中执行以下命令，将 { ['foo'] = 'bar' } 存储在名为 mykey 的 Redis 键中：
```
SET mykey "{\"foo\":\"bar\"}"
```

2. 将 Lua 脚本保存为名为 test.lua 的文件，文件内容如下：
```
local cjson = require "cjson"
local mykey = KEYS[1]
local myvalue = redis.call("GET", mykey)
local mytable = cjson.decode(myvalue)
local json_str = cjson.encode(mytable)
redis.call("SET", "myresult", json_str)
```

3. 在 Redis 命令行中执行以下命令，将 test.lua 文件的内容加载到 Redis 中：
```
redis-cli --eval test.lua
```
执行这个命令会返回一个 SHA1 值，这个值可以用来标识 Lua 脚本。复制这个值，以便在后续的步骤中使用。

4. 现在，你可以使用 EVALSHA 命令来执行 Lua 脚本并测试它的功能。执行以下命令可以执行 Lua 脚本，并将执行结果存储在名为 myresult 的 Redis 键中：
```
EVALSHA <SHA1 值> 1 mykey
```
在这个命令中，`<SHA1 值>` 是在上一步中获取到的 SHA1 值。第二个参数 `1` 表示 Lua 脚本需要访问一个 Redis 键。第三个参数 `mykey` 是要访问的 Redis 键名。

5. 现在，你可以使用 GET 命令来获取 myresult 键对应的值，以验证 Lua 脚本的功能：
```
GET myresult
```

如果一切正常，执行这个命令应该会返回一个 JSON 字符串，表示 Lua 脚本执行结果的编码结果。
在这个例子中，应该返回 `{"foo":"bar"}`。
请注意，如果在执行 EVALSHA 命令时指定了存储结果的 Redis 键名，那么你需要使用这个键名来获取结果。
如果使用了错误的键名，或者没有指定键名，那么 GET 命令将返回 nil。

