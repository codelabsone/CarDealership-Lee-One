require_relative 'car'
require_relative 'inventory'


car1 = Car.new("Blue", 2009, "Toyota", "Camry", 8000, 90000)
car2 = Car.new("Red", 2010, "Ford", "Mustang", 10000, 48000)
car3 = Car.new("Silver", 2007, "Honda", "Civic", 6000, 76000)

car_inventory = Inventory.new("")
car_inventory.load_cars(ARGV.shift || 'cars.csv')

hmake = Inventory.new("Honda")
hmake.add_car(car3)

tmake = Inventory.new("Toyota")
tmake.add_car(car1)

fmake = Inventory.new("Ford")
fmake.add_car(car2)

welcome = "Welcome to Mr. Hodges Hondas"

loop do
puts welcome.center(30)

car_inventory.print_listing

puts "\nWould you like to view our Honda, Toyota, or Ford inventories? (type 'quit' to exit)"
answer = gets.chomp.downcase

 case answer
 when 'honda'
   hmake.print_listing
   break
 when 'toyota'
   tmake.print_listing
   break
 when 'ford'
   fmake.print_listing
   break
 when 'quit'
   puts "Have a nice day!"
   break
  else
   puts "Please enter a make of car"
 end
end
