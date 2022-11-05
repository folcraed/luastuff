-- Simulating OOP in Lua using tables

local Class = {}
local __meta = {__index = Class}

function Class.new()
  local new_instance = {}
  setmetatable(new_instance, __meta)
  return new_instance
end

function Class.print()
  print "I am an instance of \'class\'"
end

local object = Class.new()
object.print()

function Class.sayhello(self)
  print ("Hello, I am", self)
end

object.sayhello(object)
object.sayhello()

function Class:saybye(phrase)
  print("I am", self, "\n" .. phrase)
end
object:saybye("see ya!")
