local function myFunction(arg1, arg2)
  -- Check if arg1 is nil
  if arg1 == nil then
    error("arg1 cannot be nil")
  end
  --Check if arg2 is a table 
  if type(arg2) ~= "table" then 
    error("arg2 must be a table")
  end
  -- Perform operations using arg1 and arg2
  local result = arg1 + arg2[1]  -- Potential error if arg2[1] is not a number
  return result
end

-- Example of calling myFunction with potentially problematic input
local result = myFunction(10, {10, "hello"})
print(result)
local result2 = myFunction(nil,{10,20})
print(result2)