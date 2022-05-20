# bloque de codigo en ruby empieza con do y termina end, pero a veces el do es opcional (if)

condicion = true

if condicion 
    puts "condicion es verdadera"
end

if !condicion
    puts "condicion es verdadera"
else
    puts "condicion es falsa"
end

print "Digite un numero: "
num = gets.chomp.to_i
if num == 5
    puts "num es 5"
elsif num == 6
    puts "num es 6"
elsif num == 7
    puts "num es 7"
else
    puts "num no es 5 ni 6 ni 7"
end