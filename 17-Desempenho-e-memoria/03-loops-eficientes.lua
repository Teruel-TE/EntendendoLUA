
local personagens = {
    {nome = "Cupim", vida = 100},
    {nome = "Jonkson", vida = 150},
    {nome = "Alfredo", vida = 80}
}

local vidaTotal = 0

for indice, personagem in ipairs(personagens) do
    vidaTotal = vidaTotal + personagem.vida
end

print("Vida total:", vidaTotal)


--[[
personagens: tabela que será percorrida.

ipairs(personagens): percorre os elementos em sequência.

indice: recebe o índice, que não precisamos utilizar.

personagem: recebe o personagem atual.

vidaTotal: acumula a soma.
]]