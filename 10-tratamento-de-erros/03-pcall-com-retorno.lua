local function criarJogador()
    return "Igor", 100
end

local sucesso, nome, vida = pcall(criarJogador)

print(sucesso)
print(nome)
print(vida)

--[[
O primeiro retorno de pcall() informa se houve sucesso. Os retornos seguintes são os valores que a função devolveu.
Isso é útil quando você quer executar uma operação protegida sem perder os resultados dela.
]]