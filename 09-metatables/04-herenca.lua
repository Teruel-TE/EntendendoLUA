local Personagem = {}

function Personagem:falar()
    print(self.nome .. " está falando!")
end

local Cachorro = {}

Cachorro.__index = Cachorro

setmetatable(Cachorro, {
    __index = Personagem
})

local function criarCachorro(nome)
    local cachorro = {
        nome = nome
    }

    return setmetatable(cachorro, Cachorro)
end

local rex = criarCachorro("Rex")
local bob = criarCachorro("Bob")

rex:falar()
bob:falar()