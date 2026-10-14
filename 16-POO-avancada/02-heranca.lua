
local Personagem = {}
Personagem.__index = Personagem

function Personagem.novo(nome, vida)
    return setmetatable({
        nome = nome,
        vida = vida
    }, Personagem)
end

function Personagem:mostrarNome()
    print(self.nome)
end

local Eletrico = {}
Eletrico.__index = Eletrico

setmetatable(Eletrico, {__index = Personagem})

function Eletrico.novo(nome, vida, energia)
    local self = Personagem.novo(nome, vida)
    self.energia = energia

    return setmetatable(self, Eletrico)
end

function Eletrico:usarRaio()
    self.energia = self.energia - 10
    print(self.nome, "usou um raio!")
end

local jonkson = Eletrico.novo("Jonkson", 100, 50)

jonkson:mostrarNome()
jonkson:usarRaio()

print("Energia:", jonkson.energia)
