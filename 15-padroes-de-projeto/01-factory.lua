
local function criarPersonagem(nome, vida)
    local personagem = {
        nome = nome,
        vida = vida
    }

    return personagem
end

local cupim = criarPersonagem("Cupim", 100)
local alfredo = criarPersonagem("Alfredo", 150)

print(cupim.nome, cupim.vida)
print(alfredo.nome, alfredo.vida)
