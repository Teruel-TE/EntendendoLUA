local function calcularDano(ataque, callback)
    local dano = ataque * 2

    callback(dano)
end

local function mostrarDano(valor)
    print("Dano causado:", valor)
end

calcularDano(15, mostrarDano)

--[[
1. calcularDano recebe o ataque 15.

2. Calcula o dano, que é 30.

3. Chama o callback passando o resultado.

4. mostrarDano recebe 30 e imprime o valor.


Callbacks são muito usados em eventos, interfaces e jogos. No LÖVE,
por exemplo, love.keypressed é uma função chamada pelo framework 
quando uma tecla é pressionada.
]]