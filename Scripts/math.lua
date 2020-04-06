--[[
Se quiser testar você mesmo esse código, 
acesse repl.it/languages/lua, copie e 
cole o código abaixo e clique em "Run" 
para rodá-lo.
]] 

local _math = {}

function _math.f(x, coef)
	local a, b, c = verificate_coef(coef)
	
	local calc = function(a, b, c, x)
		return (a * x ^ 2) + (b * x) + c
	end

	if type(x) == "table" then

		local y = {}

		for k, v in pairs(x) do
			y[k] = calc(a, b, c, x[k])
		end

		return y

	elseif type(x) == "number" then

		local y = calc(a, b, c, x)

		return y

	else
		return
	end
end

function _math.x_v(coef)
	local a, b, c = verificate_coef(coef)
	return -(b / (2 * a))
end

function verificate_coef(coef)
	if type(coef) == "table" and #coef == 3 then
		local a, b, c = coef[1], coef[2], coef[3]
		return a, b, c
	else
		return
	end
end

return _math