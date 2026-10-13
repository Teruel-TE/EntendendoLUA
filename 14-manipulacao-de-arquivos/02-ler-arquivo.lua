local arquivo = io.open("dados.txt", "r")

if arquivo then
    local conteudo = arquivo:read("*a")
    print(conteudo)

    arquivo:close()
else
    print("Nao foi possivel abrir o arquivo!")
end

--[[
"r" abre um arquivo para leitura.

arquivo:read("*a") lê todo o conteúdo.

if arquivo then verifica se a abertura funcionou antes de tentar ler.

else trata o caso em que o arquivo não pôde ser aberto.

Essa verificação é importante porque io.open() pode falhar,
por exemplo, se o arquivo não existir no modo de leitura.
]]