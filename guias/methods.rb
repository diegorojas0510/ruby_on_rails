# Los métodos se conocen como funciones en otros lenguajes y sirven para  gusradr codigo que se ejecutara varias veces

def square_perimeter(_side)
  (_side*4)
end

print 'Ingrese un número: '
_side = gets.chomp.to_i

perimeter = square_perimeter(_side)
print perimeter

def square_area(area)
  (area**2)
end
puts
print 'Ingrese un número: '
area = gets.chomp.to_i

square_area1 = square_area(area)
puts square_area1
puts


def sum(array = [1, 2, 3])
  suma = 0
  array.each do |num|
    suma += num.to_i
  end
  return suma
end

puts sum

