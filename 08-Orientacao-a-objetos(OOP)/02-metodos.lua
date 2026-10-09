local jogador = {
    nome = "Igor",
    vida = 100
}

function jogador.receberDano(dano)
    jogador.vida = jogador.vida - dano
end

jogador.receberDano(30)

print(jogador.vida)

-- maneira meio bruta, existe mais flexivel