--[[
Normalmente, quando você chama uma função, ela executa seu código até terminar ou encontrar um erro.
Uma corrotina permite controlar a execução dessa função.
]]

local function tarefa()
    print("Etapa 1")
    print("Etapa 2")
    print("Etapa 3")
end

local minhaCoroutine = coroutine.create(tarefa)

print("Corrotina criada")

--[[cria uma corrotina, mas não começa sua execução.
É como preparar uma tarefa para executá-la depois.
- tarefa é a função que queremos executar.
- coroutine.create() cria a corrotina.
- minhaCoroutine guarda a corrotina criada.
Repare que passamos tarefa, sem parênteses. Se escrevêssemos tarefa(), 
executaríamos a função imediatamente.]]