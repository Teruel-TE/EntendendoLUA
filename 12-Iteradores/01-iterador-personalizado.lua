local function contarAte(limite)
    local atual = 0

    return function()
        if atual < limite then
            atual = atual + 1
            return atual
        end
    end
end

for numero in contarAte(3) do
    print(numero)
end

--[[
Por que isso é útil em jogos?
Imagine que você quer percorrer uma sequência de fases, gerar números ou fornecer inimigos de uma lista sob determinadas regras.
Um iterador personalizado permite controlar o que será fornecido a cada etapa, sem precisar criar uma tabela com todos os resultados antecipadamente.
Isso é diferente de uma corrotina: um iterador fornece os próximos valores; uma corrotina permite pausar e retomar a execução de uma tarefa. Os dois conceitos podem ser usados juntos, mas não são a mesma coisa.
]]