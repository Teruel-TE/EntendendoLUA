local jogador = {
    nome = "Igor",
    vida = 100,
    nivel = 5
}

for chave, valor in pairs(jogador) do
    print(chave, valor)
end

--[[
vou explicar porque tenho dificuldade,, no objeto ou tabela ele esta sendo dividido da seguinte
forma:

for: inicia o loop.

chave: variável que recebe a chave encontrada.

valor: variável que recebe o valor correspondente.

in: conecta as variáveis ao iterador.

pairs(jogador): permite percorrer os pares de chave e valor da tabela.

do: inicia o bloco de código que será repetido.
- Chave  -   Valor
  nome       "Igor"
  vida        100
  nivel       5
]]