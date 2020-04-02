-- Página 60

--[[
Se quiser testar você mesmo esse código, 
acesse repl.it/languages/lua, copie e 
cole o código abaixo e clique em "Run" 
para rodá-lo.
]] 

function calculate(n)
	return -2 * (n ^ 2) - (6 * n) + 5
end

function f(x)

	if type(x) == "table" then

		local y = {}

		for k, v in pairs(x) do
			y[k] = calculate(v)
		end

		return x, y

	elseif type(x) == "number" then
		return calculate(x)
	else
		error("Invalid data type")
	end
end

x, y  = f({-2, -1, 0, 1, 2})


for k, v in pairs(y) do
	print(x[k]..", "..y[k])
end

--[[
Output:
9
9
5
-3
-15
]]
