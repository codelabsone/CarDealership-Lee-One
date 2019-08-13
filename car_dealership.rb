require_relative 'car'
require_relative 'inventory'
#require_relative 'cars'

car1 = Car.new("Blue", "2007", "Toyota", "Camry", 6000, 90000)

car_inventory = Inventory.new("Toyota")
car_inventory.add_car(car1)
#car_inventory.load_cars(ARGV.shift || 'cars.csv')


loop do
puts "\nWhich make are you interested in? (type 'quit' to exit)"
answer = gets.chomp.capitalize

 case answer
 when 'Toyota'
   puts car_inventory.print_listing
   break
 when 'Quit'
   puts "Have a nice day!"
   break
  else
   puts "Please enter a make of car"
 end
end
