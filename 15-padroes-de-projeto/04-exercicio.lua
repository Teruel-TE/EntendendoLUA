local function criarPersonagem(nome, vida)
    local personagem = {
        nome = nome,
        vida = vida
    }
    return personagem
end

local function receberdano(personagem,dano)
    personagem.vida = personagem.vida - dano
end
local cupim = criarPersonagem("cupim", 100)

receberdano(cupim,25)

print(cupim.vida)