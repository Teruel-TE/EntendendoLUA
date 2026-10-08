local function criarContador()
    local contador = 0

    return function()
        contador = contador + 1
        return contador
    end
end

local contar = criarContador()

print(contar())
print(contar())
print(contar())

--[[

criarContador() cria contador, inicialmente 0.

Ela retorna uma função interna.

Essa função interna continua acessando contador.

Cada chamada incrementa o mesmo contador, em vez de criar outro.

]]