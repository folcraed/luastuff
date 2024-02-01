Zombie = {}
function Zombie.init(h, w, s, l)
    local self = setmetatable({}, Zombie)
    self.height = h
    self.weight = w
    self.speed = s
    self.location = l
    return self
end

-- Use the metatable
-- TODO Change this to accept user input to create several zombies
function AddZombie()
    Z1 = Zombie.init(176, 50, "slow", "Forbes & Murray Avenue")
end

function ShowZombies()
    print(Z1.location .. ": " ..
        Z1.height .. " cm, " ..
        Z1.weight .. "kg, " ..
        Z1.speed)
end

--
-- Will need to change this when accepting user input.
AddZombie()
ShowZombies()
