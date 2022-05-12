# Una distribuidora de motocicletas tiene una promoción de medio año que consiste en lo siguiente.
# Las motos marca Honda tienen un descuento del 5%
# Las marcas Yamaha del 8% y las Suzuki del 10%
# Las otras marcas 2%.
# Se debe mostrar el precio de la moto, el descuento y el precio a pagar.

# puts "Ingrese una opción para compra de motos 1: Honda, 2:Yamaha, 3:Susuki, 4: Otras"
# num = gets.chomp;

# case num
# when 1 
#     valor = 10000000
#     descuento = (valor * 0.05)
#     total = valor-descuento
#     puts "Honda por valor de: $#{total}"
# when 2
#     valor = 18000000
#     descuento = (valor * 0.08)
#     total = valor-descuento
#     puts "Yamaha por valor de: $#{total}"
# when 3
#     valor = 15000000
#     descuento = (valor * 0.10)
#     total = valor-descuento
#     puts "Suzuki por valor de: $#{total}"
# else
#     valor = 5000000
#     descuento = (valor * 0.02)
#     total = valor-descuento
#     puts "Suzuki por valor de: $#{total}"
    
# end

def calcularDescuento(moto, precio)
   if (moto == "Honda")
       porcentaje = 0.05
   elsif moto == "Yamaha" || moto == "Susuki"
       porcentaje = 0.08
   else 
    porcentaje = 0.2
   end
   descuento = precio * porcentaje
   return descuento
end

precio = 120
moto = "Yamaha"
descuento = calcularDescuento(moto, precio)
total = precio - descuento

puts "Precio #{precio}"
puts "Descuento #{descuento}"
puts "Total a pagar #{total}"