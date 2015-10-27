class MyCar

  attr_accessor :color
  attr_reader :year

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
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

  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
  end
end

MyCar.gas_mileage(13, 351)
my_car = MyCar.new("2010", "Ford Focus", "silver")
puts my_car

audi = MyCar.new(2014, "Audi TT", 'mid-night blue')
audi.speed_up(30)
audi.current_speed
audi.brake(30)
audi.current_speed
audi.shut_down
audi.current_speed
audi.spray_paint("ocean blue")


class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steven")
bob.name = "Bob"