--[[
Nesta aula, vamos entender onde uma variável pode ser acessada e por quanto tempo ela existe.
 Isso é muito importante para evitar bugs quando seus projetos Lua começarem a ficar maiores.

 Escopo é a região do código em que uma variável pode ser acessada.
Por exemplo:
]]

local nome = "Igor"

print(nome)

--[[
Funciona porque a variável nome foi criada no escopo em que estamos usando.
Mas veja este exemplo:
]]
if true then
    local vida = 100
    print(vida)
end

-- print(vida)

--[[
Dentro do if, o resultado é 100. 
Fora dele, vida não está acessível como a variável local criada dentro do bloco.
Isso acontece porque local vida existe apenas no escopo em que foi declarada
e nos escopos internos dele.
]]


local moedas = 50

local function comprar()
    local preco = 20

    print("Moedas:", moedas)
    print("Preco:", preco)
end

comprar()

print(moedas)
 --print(preco)

--[[
moedas foi declarada fora da função, então a função consegue acessá-la.

preco foi declarada dentro de comprar(), então só existe naquele escopo.

O print(preco) final não encontra uma variável local ou global com esse nome e, 
por isso, retorna nil.

nil não é exatamente um erro. Significa que não há valor naquela variável consultada.
]]