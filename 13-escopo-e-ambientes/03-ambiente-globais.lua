--[[
4. O que é _G?
No Lua padrão, _G é uma tabela que 
referencia o ambiente global. Ela permite acessar variáveis globais usando chaves.

]]

_G.pontos = 100

print(pontos)
print(_G.pontos)
print(_G["pontos"])

-- todas sao equivalentes e acessam o mesmo valor

--[[
Veja a relação:
- pontos — acessa a variável global pelo nome.
- _G.pontos — acessa a chave "pontos" da tabela global.
- _G["pontos"] — acessa a mesma chave usando colchetes.
Isso também significa que você pode fazer:
]]

local nomeVariavel = "pontos"

_G[nomeVariavel] = 250

print(pontos)

--[[
Aqui, o nome da variável é armazenado em outra variável e usado para acessar a tabela _G.
Importante: ambientes globais podem ser configurados de formas diferentes, 
e o comportamento de _G depende do ambiente. Em Roblox Studio,por exemplo, 
você estará usando Luau, que tem diferenças em relação ao Lua padrão.
]]