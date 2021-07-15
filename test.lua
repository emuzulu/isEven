local isEven = require("isEven")
local dotest = false

local function testRange(min, max, evens)
	print(('Testing [%d,%d] %s...'):format(min, max, evens and 'evens' or 'odds'))
	for i = min, max, 2 do
		if not evens then i = i - 1 end
		local result = isEven(i)
		assert((result and not evens), ('Test failed. Got: isEven(%d) = %s. Expected: isEven(%d) = %s.'):format(i, tostring(result), i, tostring(evens)))
	end
	print('Test passed.')
end

local function main()
	testRange(0, 10000, true)
	testRange(0, 10000, false)
end

if dotest then
	main()
end