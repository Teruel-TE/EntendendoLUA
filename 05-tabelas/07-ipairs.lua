local inventario = {
    "espada",
    "pocao",
    "arco"
}

for indice, item in ipairs(inventario) do
    print(indice, item)
end

--[[

for: inicia o loop.

indice: recebe o índice numérico atual, como 1, 2 ou 3.

item: recebe o conteúdo daquele índice, como "espada".

in: conecta as variáveis ao iterador.

ipairs(inventario): percorre os índices inteiros consecutivos a partir de 1, parando antes do primeiro
índice ausente.

do: inicia o bloco que será repetido.
indice -  valor
  1       espada
  2       pocao
  3       arco
]]