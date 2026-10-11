--[[
A função error() serve para gerar um erro
 intencionalmente e interromper a execução normal do código, a menos que ele seja tratado.]]
local vida = -10

if vida < 0 then
    error("A vida não pode ser negativa!")
end

print("Programa continuou")