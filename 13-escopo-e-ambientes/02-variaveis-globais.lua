---@diagnostic disable: lowercase-global
function testar()
---@diagnostic disable-next-line: lowercase-global
    pontos = 100
end

testar()

print(pontos)


--[[
A variável pontos foi criada sem local, então ela fica acessível 
globalmente no ambiente padrão do Lua.
]]
-- Boa prática: use local por padrão.
-- Variáveis globais podem ser alteradas acidentalmente por outras partes do programa.