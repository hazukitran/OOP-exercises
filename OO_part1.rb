class Vehicle

  attr_accessor :color
  attr_reader :year

  @@number_of_vehicles = 0

  def self.number_of_vehicles
    @@number_of_vehicles
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "You accelerate at #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You brake and decelerate at #{number} mph."
  end

  def current_speed
    puts "You're now going at #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "It's time to park."
  end

  def spray_paint(color)
    self.color = color
    puts "The car is now #{color}"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def age_of_vehicle
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
  end
end

module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
  end
end

class MyTruck < Vehicle

  include Towable
  NUMBER_OF_DOORS = 2

  def to_s
    "My truck is a #{color}, #{year}, #{@model}!"
  end
end

MyCar.gas_mileage(13, 351)
my_car = MyCar.new(2010, "Ford Focus", "silver")
puts my_car

audi = MyCar.new(2014, "Audi TT", 'mid-night blue')
audi.speed_up(30)
audi.current_speed
audi.brake(30)
audi.current_speed
audi.shut_down
audi.current_speed
audi.spray_paint("ocean blue")

my_truck = MyTruck.new(2010, "Ford", "space grey")
puts my_truck

puts Vehicle.number_of_vehicles
puts my_truck.can_tow?(400)

puts my_car.age_of_vehicle

# puts MyTruck.ancestors
# puts ""
# puts MyCar.ancestors
# puts ""
# puts Vehicle.ancestors

class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steven")
bob.name = "Bob"
