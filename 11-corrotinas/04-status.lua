local function tarefa()
    print("Executando tarefa")
    coroutine.yield()
    print("Tarefa finalizada")
end

local minhaCoroutine = coroutine.create(tarefa)

print(coroutine.status(minhaCoroutine))

coroutine.resume(minhaCoroutine)

print(coroutine.status(minhaCoroutine))

coroutine.resume(minhaCoroutine)

print(coroutine.status(minhaCoroutine))

--[[
"suspended": está aguardando execução ou retomada.

"running": está em execução.(Ela apenas aparece se vc executar o status dentro da funcao,
pois ele so aparece no momento exato que esta executando)

"dead": terminou ou não pode mais ser retomada por ter ocorrido um erro.
]]