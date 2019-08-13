
require_relative 'car'

class Inventory
  def initialize(name)
    @car_listing = []
    @name = name
  end

  def add_car(a_car)
    @car_listing.push(a_car)
  end

  def request_listing(make)
    puts "These are our #{@name} cars:"
    puts "#{car.make}"
  end

  def print_listing
    puts "\nThese are our #{@name} cars:"
    @car_listing.each do |list|
    puts list
    end
  end

  def load_cars(from_file)
    File.readlines(from_file).each do |line|
      add_car(Inventory.from_csv(line))
    end
  end
end
