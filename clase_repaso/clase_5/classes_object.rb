class Person
end

person = Person.new

p person
puts person.class
puts person.class.class
#p person.methods
p person.instance_of? Array
p person.instance_of? Person
p person.object_id
person2 = Person.new
p person2.object_id
p person.to_s