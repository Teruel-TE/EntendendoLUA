
local Personagem = {}

function Personagem.criar(nome, vida)
    return {
        nome = nome,
        vida = vida
    }
end

function Personagem.receberDano(personagem, dano)
    personagem.vida = personagem.vida - dano
end

return Personagem
