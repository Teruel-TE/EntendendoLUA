local jogador = {
    nome = "Igor",
    vida = 100
}

function jogador:receberDano(self, dano)
    self.vida = self.vida - dano
end

jogador.receberDano(jogador, 30)

print(jogador.vida)

--[[
Vamos entender:
- self representa o objeto que está sendo utilizado.
- self.vida acessa a vida desse objeto.
- self.vida = self.vida - dano diminui sua vida.
- jogador.receberDano(jogador, 30) passa o próprio jogador como primeiro argumento.
Mas escrever jogador toda vez seria trabalhoso. Por isso, Lua oferece uma sintaxe especial.

function jogador.receberDano(self, dano) tambem funciona(equivalentes)
]]