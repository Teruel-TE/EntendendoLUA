local arquivo = io.open("dados.txt", "w")

if arquivo then
    arquivo:write("Teruela T ama\n")
    arquivo:write("estou sofrendo por amor ;-;\n")
    arquivo:close()
else
    print("arquivo nao encotrado error(404)")
end


arquivo = io.open("dados.txt", "r")

if arquivo then
    local conteudo = arquivo:read("*a") -- nao precisa informa novamente o dados.txt
    print(conteudo)
    arquivo:close()

else
     print("arquivo nao encotrado error(404)")
end

--[[

io.open() abre ou cria arquivos.

"w" escreve e substitui o conteúdo anterior.

"r" abre para leitura.

write() grava informações.

read("*a") lê o conteúdo inteiro.

close() fecha o arquivo.

]]