def dealership_listing(year, make, model, price)
  "This is a #{year} #{make} #{model} for $#{price}."

end

tmake = "Toyota"
hmake = "Honda"


puts dealership_listing(2019,tmake,"Camry","20,000")
puts dealership_listing(2011,hmake, "Accord", "7,000")