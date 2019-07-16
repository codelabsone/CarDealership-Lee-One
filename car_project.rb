puts "Inventory:"
def dealership_listing(year, make, model, price)
  "This car is a #{year} #{make} #{model} for $#{price}."
end

tmake = "Toyota"
hmake = "Honda"
puts dealership_listing(2019, tmake, "Camry","20,000")
puts dealership_listing(2018, hmake, "Civic","15,000")
puts "Which vehicle are you interested in?"
name = gets.chomp
puts "The #{name} is a great choice!"
