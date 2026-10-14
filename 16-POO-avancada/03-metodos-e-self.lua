
local Personagem = {}
Personagem.__index = Personagem

function Personagem.novo(nome, vida)
    local self = {
        nome = nome,
        vida = vida
    }

    return setmetatable(self, Personagem)
end

function Personagem:receberDano(dano)
    self.vida = self.vida - dano
end

function Personagem:mostrarStatus()
    print("Nome:", self.nome)
    print("Vida:", self.vida)
end

local cupim = Personagem.novo("Cupim", 100)
local jonkson = Personagem.novo("Jonkson", 150)

cupim:receberDano(30)
jonkson:receberDano(50)

cupim:mostrarStatus()
jonkson:mostrarStatus()
