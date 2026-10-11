local jogador = {
    nome = "Igor"
}

print(jogador.vida)

-- resultado nil

local jogador = {
    nome = "Igor"
}

local configuracoes = {
    vida = 100,
    velocidade = 10
}

setmetatable(jogador, {
    __index = configuracoes
})

print(jogador.nome)
print(jogador.vida)
print(jogador.velocidade)

--[[
- jogador.nome: existe na própria tabela, então o Lua retorna "Igor".
- jogador.vida: não existe nela, então o Lua consulta configuracoes.
- jogador.velocidade: também é procurada em configuracoes.
Pense no __index como um lugar alternativo onde o Lua procura uma chave quando não a encontra na tabela original.]]