--[[
Uma metatable é uma tabela especial 
que permite definir como outra tabela deve se comportar em determinadas situações.
]]

local jogador = {
    nome = "Igor"
}

local metatable = {
    _index = {
        vida = 100
    }
}

setmetatable(jogador, metatable)

print(jogador.nome)
print(jogador.vida)