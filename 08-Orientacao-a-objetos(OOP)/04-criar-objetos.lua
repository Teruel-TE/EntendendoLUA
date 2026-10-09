local function criarJogador(nome, vida)
    local jogador = {
        nome = nome,
        vida = vida
    }

    function jogador:receberDano(dano)
        self.vida = self.vida - dano
    end

    return jogador
end

local jogador1 = criarJogador("Igor", 100)
local jogador2 = criarJogador("Carlos", 150)

jogador1:receberDano(20)
jogador2:receberDano(50)

print(jogador1.nome, jogador1.vida)
print(jogador2.nome, jogador2.vida)

--[[
A função criarJogador funciona como uma fábrica de objetos.
Cada chamada cria uma tabela independente, com seus próprios valores de vida e nome.
Isso é muito útil para jogos: você pode criar vários inimigos, personagens,
armas e outros elementos sem precisar escrever tudo novamente.
]]