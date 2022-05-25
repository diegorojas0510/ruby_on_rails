#imprimir la hilera de pascal creando una método


def pascal(row_num)
  return [1] if row_num.zero?

  array = pascal(row_num - 1)
  #print array
  #print "Array #{array}"
  puts
  array_pascal = []
  #print array_pascal
  #print "array_pascal #{array_pascal}"
  (array.length - 1).times do |i|
    array_pascal.push array[i] + array[i + 1]
  end
  [1, array_pascal, 1].flatten
end

print pascal(1)
print pascal(2)
print pascal(3)
print pascal(4)
print pascal(10)









