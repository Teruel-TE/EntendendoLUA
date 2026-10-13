local function tarefa()
    print("Etapa 1")

    coroutine.yield()

    print("Etapa 2")

    coroutine.yield()

    print("Etapa 3")
end

local minhaCoroutine = coroutine.create(tarefa)

coroutine.resume(minhaCoroutine)
print("Pausa 1")

coroutine.resume(minhaCoroutine)
print("Pausa 2")

coroutine.resume(minhaCoroutine)
print("Fim")

--[[
Cada chamada a coroutine.resume()
permite que a corrotina continue até terminar ou encontrar outro coroutine.yield().
]]