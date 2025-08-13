-- local type1 = 1 < 2 ? "less" : "normal" -- 兜底结算类型 -- 不支持三目运算符
-- print(type1)

-- 兜底结算类型
local type = "normal"
if (1 < 2) then
    type = "less"
end
print(type)

print("-----------------------------")

-- 间接实现
a,b,c=1,2,3
a=false;
d=(a and b) or c;
print(d);--3
print("\n");

A,B,C=1,2,3;
B=false;
D=(A and B)or C;
print(D);--3 因为当B=false时,继续走C

E=((A and{B}) or {C})[1];--这里才是一个合格的三目运算 {B},{C}都是table[索引数组],一定为真,返回第一个元素即可
print(E);