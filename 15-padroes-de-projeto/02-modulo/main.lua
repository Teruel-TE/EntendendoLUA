local Personagem = require("personagem")

local cupim = Personagem.criar("Cupim", 100)

Personagem.receberDano(cupim, 30)

print(cupim.vida)