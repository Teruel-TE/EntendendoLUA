
local Personagem = {}
Personagem.__index = Personagem

function Personagem.novo(nome, vida)
    local self = {
        nome = nome,
        vida = vida
    }

    return setmetatable(self, Personagem)
end

function Personagem:mostrarStatus()
    print("Nome:", self.nome)
    print("Vida:", self.vida)
end

local cupim = Personagem.novo("Cupim", 100)

cupim:mostrarStatus()

--[[
Personagem.__index = Personagem: permite que os objetos encontrem os métodos na tabela Personagem

setmetatable(self, Personagem): conecta o objeto à tabela que contém esses métodos.

Personagem.novo(...): cria um objeto novo.

self: representa o objeto que está usando o método.

Repara que não precisamos copiar mostrarStatus() para cada personagem.
Todos podem utilizar o mesmo método.
]]