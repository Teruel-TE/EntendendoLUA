
local personagem = {
    nome = "Cupim",
    vida = 100,
    energia = 50
}

personagem.vida = personagem.vida - 20
personagem.energia = personagem.energia - 10

print(personagem.nome)
print(personagem.vida)
print(personagem.energia)

--[[
Em vez de criar uma tabela nova a cada alteração, modificamos os dados do próprio personagem.
Importante: criar tabelas novas não é necessariamente errado. Às vezes,
 é exatamente o que precisamos. O objetivo é não criar objetos sem motivo.
]]