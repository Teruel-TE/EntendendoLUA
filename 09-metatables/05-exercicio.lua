local animal = {}

function animal:comer()
    print("o animal esta comendo")

end
local gato = {}

setmetatable(gato,{
__index = animal})

gato.comer()