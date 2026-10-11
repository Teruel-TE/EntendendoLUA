local function dividir(a, b)
    if b == 0 then
        error("Nao E possivel dividir por zero!")
    end

    return a / b
end

local sucesso, resultado = pcall(dividir, 10, 0)

print(sucesso)
print(resultado)

print("O programa continuou!")

--[[
Agora imagine que uma função pode dar erro,
mas você não quer que esse erro encerre o restante do programa.
É para isso que serve pcall(): ele executa uma função de forma protegida
 e informa se ela terminou com sucesso.]]

--[[
pcall(...): chama a função de forma protegida.

dividir: é a função que queremos executar.

10, 0: são os argumentos enviados para ela.

sucesso: recebe false se ocorrer um erro, ou true se tudo funcionar.

resultado: recebe o valor retornado pela função em caso de sucesso,
ou a mensagem de erro em caso de falha]]