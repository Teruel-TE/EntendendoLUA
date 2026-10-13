local function contarATE(limite)
    local lim = 0

    return function ()
        if lim < limite then
            lim = lim + 1
            return lim
        end
    end
end

for numero in contarATE(3) do
    print(numero)
end