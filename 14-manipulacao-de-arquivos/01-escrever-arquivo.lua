local arquivo = io.open("dados.txt", "w")

---@diagnostic disable-next-line: need-check-nil
arquivo:write("Jogador: Cupim\n")
---@diagnostic disable-next-line: need-check-nil
arquivo:write("Pontuacao: 100\n")

---@diagnostic disable-next-line: need-check-nil
arquivo:close()

--[[
Execute o código. Se tudo funcionar, ele criará um arquivo chamado dados.txt no diretório de trabalho do programa.
O arquivo terá este conteúdo:

io.open() abre um arquivo ou tenta criá-lo.

"w" significa modo de escrita: cria o arquivo se necessário e substitui o conteúdo existente.

arquivo:write() escreve o texto.

\n representa uma quebra de linha.

arquivo:close() fecha o arquivo e finaliza a escrita.


abrir com "w" apaga o conteúdo anterior do arquivo.
Não use esse modo quando quiser apenas acrescentar informações.
]]