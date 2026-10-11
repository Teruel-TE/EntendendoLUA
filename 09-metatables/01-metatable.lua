--[[
Uma metatable é uma tabela especial 
que permite definir como outra tabela deve se comportar em determinadas situações.

setmetatable é a função que associa uma metatable a outra tabela.
apenas 2 argumentos, nada mais
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
