local function myFunction(arg1, arg2)
  -- Check if arg1 is nil
  if arg1 == nil then
    error("arg1 cannot be nil")
  end
  -- Check if arg2 is a table and if its first element is a number
  if type(arg2) ~= "table" or type(arg2[1]) ~= "number" then 
    error("arg2 must be a table with a number as its first element")
  end
  -- Perform operations using arg1 and arg2
  local result = arg1 + arg2[1]
  return result
end

-- Example of calling myFunction with safe input
local result = myFunction(10, {10})
print(result)

-- Example of calling myFunction with error handling
local result2
local success, err = pcall(myFunction, nil, {10, 20})

if success then
  result2 = result2
  print(result2)
else
  print("Error: " .. err)
end

local result3
local success, err = pcall(myFunction, 10, {"hello"})

if success then
  result3 = result3
  print(result3)
else
  print("Error: " .. err)
end