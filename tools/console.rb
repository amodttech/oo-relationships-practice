require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


b1 = Bakery.new("Bake")
b2 = Bakery.new("Biscuit")
b3 = Bakery.new("Oven")

d1 = b1.create_dessert("Choco Bits")
d2 = b1.create_dessert("Honey Badgers")
d3 = b2.create_dessert("Sour Snakes")
d4 = b3.create_dessert("Cake")

i1 = Ingredient.new("Honey", 30)
i2 = Ingredient.new("Sugar", 30)
i3 = Ingredient.new("Flour", 2)
i4 = Ingredient.new("Cocoa", 10)
i5 = Ingredient.new("Lemon Juice", 20)
i6 = Ingredient.new("Egg", 5)
i7 = Ingredient.new("Milk", 10)

dj1 = d1.create_joiner(i4)
dj2 = d1.create_joiner(i2)
dj3 = d1.create_joiner(i3)
dj4 = d1.create_joiner(i6)
dj5 = d2.create_joiner(i1)
dj6 = d2.create_joiner(i3)
dj7 = d2.create_joiner(i6)
dj8 = d3.create_joiner(i5)
dj9 = d3.create_joiner(i1)
dj10 = d4.create_joiner(i2)
dj11 = d4.create_joiner(i3)
dj12 = d4.create_joiner(i6)
dj13 = d4.create_joiner(i7)



puts dj1

binding.pry
0