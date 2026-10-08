local vida = 50

if vida <= 0 then
    print("Morto")
elseif vida < 30 then
    print("Vida baixa")
elseif vida < 70 then
    print("Vida moderada")
else
    print("Vida alta")
end