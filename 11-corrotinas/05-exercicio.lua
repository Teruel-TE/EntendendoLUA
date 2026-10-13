local function Testando()
    print("carregando...")

    coroutine.yield()

    print("carregando50%")

    coroutine.yield()
    
    print("finalizado")

end

local mcoroutine = coroutine.create(Testando)

coroutine.resume(mcoroutine)
print("1")
coroutine.resume(mcoroutine)
print("2")
coroutine.resume(mcoroutine)
print("3")