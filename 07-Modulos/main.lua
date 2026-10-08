local matematica = require("matematica")

print(matematica.somar(10,5))
print(matematica.multiplicar(4,3))

-- require importa a biblioteca "matematica" que eu criei

--[[
Resumindo: require carrega o módulo na primeira vez e,
 nas próximas chamadas, normalmente reutiliza o que já foi carregado.
 se eu criasse dois requires da mesma biblioteca, e colocasse um print perdido la,
 ele iria imprimir o print apenas 1 vez, pois ja foi executado nesse arquivo, 
]]