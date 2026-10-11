local metodosJogador = {}

function metodosJogador:receberDano(dano)
    self.vida = self.vida - dano
end

local function criarJogador(nome, vida)
    local jogador = {
        nome = nome,
        vida = vida
    }

    setmetatable(jogador, {
        __index = metodosJogador
    })

    return jogador
end

local jogador1 = criarJogador("Igor", 100)
local jogador2 = criarJogador("Carlos", 150)

jogador1:receberDano(20)
jogador2:receberDano(50)

print(jogador1.vida)
print(jogador2.vida)

--[[
O Lua procura receberDano dentro de jogador1.
Como esse método não existe diretamente na tabela, ele consulta metodosJogador por meio de __index.
A função é encontrada e executada, recebendo jogador1 como self.
A vantagem: os jogadores compartilham a mesma função, em vez de cada um precisar armazenar uma cópia dela.]]