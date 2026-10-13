local arquivo = io.open("dados.txt", "a")

if arquivo then
    arquivo:write("Nova pontuacao: 200\n")
    arquivo:close()
end

--[[
Modo	Função
"r"	Ler um arquivo existente
"w"	Escrever, substituindo o conteúdo anterior
"a"	Acrescentar conteúdo ao fina
]]