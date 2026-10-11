local function comprarItem(dinheiro, preco)
    if preco <= 0 then
        print("Preço inválido!")
        return
    end

    if dinheiro < preco then
        print("Dinheiro insuficiente!")
        return
    end

    print("Item comprado!")
end

comprarItem(50, 80)
comprarItem(100, 80)
comprarItem(100, -5)

--[[
- error() gera um erro.
- pcall() permite capturar um erro durante a execução.
- if e return permitem verificar uma situação e sair da função sem gerar um erro.
Em jogos, muitas situações devem ser tratadas com validações normais, como dinheiro insuficiente,
falta de munição ou nível insuficiente. Não é necessário usar error() para tudo.
]]