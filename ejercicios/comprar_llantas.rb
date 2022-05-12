# Crear un algoritmo que muestre informacións sobre la compra de llantas.
# Se sabe que el costo de la llanta es 250 pesos por unidad
# Si la cantidad de llantas comprados es menor de 12, al precio de las llantas compradas se aplicará un descuento del 20%
# Si el número de llantas compradas es mayor de 12, el precio de llanta se reduce a 220 por unidad y el descuento será de 25%.

puts "Cuantas llantas quiere comprar: "
num = gets.chomp.to_i;
llantaMin = num * 250;
llantaMax = num * 220;
descuentoMin = (llantaMin*0.20);
descuentoMax = ((llantaMax * 25)/100);
if (num <= 12)
    puts "Valor a Pagar #{llantaMin-descuentoMin}"
elsif(num > 12)
    puts "Valor a Pagar #{llantaMax - descuentoMax}"
end
