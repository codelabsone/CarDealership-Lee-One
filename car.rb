class Car
attr_accessor :make, :model, :year, :color

  def initialize(color, year, make, model, price, mileage)
    @year = year
    @make = make
    @model = model
    @price = price
    @mileage = mileage
    @color = color
  end

  def to_s
  "#{@color}, #{@year}, #{@make}, #{@model} for $#{@price} with #{@mileage} miles."
  end

end
