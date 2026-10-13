--[[
Imagine um jogo que possui três estados:
- Menu inicial.
- Jogando.
- Pausado.
Você poderia criar vários if espalhados pelo código para controlar cada situação. Mas isso fica difícil de manter.
O padrão State organiza o comportamento de acordo com o estado atual.
]]
local estado = "menu"

local function mudarEstado(novoEstado)
    estado = novoEstado
end

local function atualizarJogo()
    if estado == "menu" then
        print("Exibindo menu")
    elseif estado == "jogando" then
        print("Atualizando personagem e inimigos")
    elseif estado == "pausado" then
        print("Jogo pausado")
    end
end

atualizarJogo()

mudarEstado("jogando")
atualizarJogo()

mudarEstado("pausado")
atualizarJogo()

--[[
Aqui, a função mudarEstado() modifica o estado atual, e atualizarJogo() 
decide o que fazer com base nele.
Esse exemplo é uma versão introdutória do padrão State.
Em projetos maiores, cada estado pode ter suas próprias funções de entrada, atualização e saída.

Padrão	Quando é útil
Factory	Criar muitos objetos seguindo a mesma estrutura.
Module	Separar o código em arquivos com responsabilidades específicas.
State	Controlar comportamentos diferentes conforme a situação atual.
]]