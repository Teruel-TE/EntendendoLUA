local function executarAcao(acao)
    acao()
end

local function pular()
    print("O jogador pulou!")
end

executarAcao(pular)
--[[
Repare que não usamos pular(). Passamos a própria função, sem executá-la naquele momento.
Dentro de executarAcao, o parâmetro acao recebe essa função
(basicamente o pular vira acao do executarAcao).
Depois, acao() a executa.
]]