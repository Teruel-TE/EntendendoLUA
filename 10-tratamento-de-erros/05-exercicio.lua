local function sacar(saldo,valor)
   if valor <= 0 then
    error("valor invalido")
   end
   
   if valor > saldo then
    error("saldo insuficiente")
   end
   return (saldo - valor)
end

local sucesso,resultado = pcall(sacar,100,100);

print(sucesso)
print(resultado)
