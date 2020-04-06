local _math = require("Scripts/math")

local f = _math.f 
local x_v = _math.x_v

coef = {1, 4, -9}

x = {-4, -3, -2, -1, 0}


y = f(x, coef)

for k, v in pairs(y) do
	if x[k] == x_v(coef) then
		print("("..x[k]..", "..y[k]..")*")
	else
		print("("..x[k]..", "..y[k]..")")
	end
end
