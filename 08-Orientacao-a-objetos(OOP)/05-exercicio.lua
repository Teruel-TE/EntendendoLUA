local function CriarInimigo(nome,vida)
    local jogador = {
        nome = nome,
        vida = vida
    }

    function jogador:receberDano(dano)
        self.vida = self.vida - dano
        
    end
    return jogador
end
local inimigo = CriarInimigo("rato",5)
local inimigo2 = CriarInimigo("leao",5)

inimigo:receberDano(3)
inimigo2:receberDano(3)

print(inimigo.vida)
print(inimigo2.vida)