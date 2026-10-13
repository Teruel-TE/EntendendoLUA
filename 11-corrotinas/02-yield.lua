local function tarefa()
    print("Etapa 1")

    coroutine.yield()

    print("Etapa 2")
end

local minhaCoroutine = coroutine.create(tarefa)

coroutine.resume(minhaCoroutine)
print("Fora da corrotina")

--[[
Por que Etapa 2 não apareceu?
Porque coroutine.yield() suspendeu a execução da corrotina.
O código foi executado nesta ordem:
1. coroutine.create(tarefa) preparou a corrotina.
2. coroutine.resume(minhaCoroutine) iniciou sua execução.
3. A corrotina imprimiu Etapa 1.
4. coroutine.yield() pausou a corrotina.
5. O controle voltou para o código principal, que imprimiu Fora da corrotina.
A corrotina não terminou. Ela está suspensa, esperando ser retomada.
]]