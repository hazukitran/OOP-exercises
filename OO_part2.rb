class Student

  def initialize(name, grade) 
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade 
  end

end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 82)

puts "Well done!" if joe.better_grade_than?(bob)

# Quiz 1 - Exercise 2
module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed

  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  include Speed

  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

car = Car.new
truck = Truck.new

puts car.go_fast
puts truck.go_fast

# Quiz 2 - Exercise 4
class BeesWax

  attr_accessor :type

  def initialize(type)
    @type = type
  end

  def describe_type
    puts "I am a #{type} type of BeesWax"
  end
end

# Quiz 3 - Exercise 3
cat_1 = AngryCat.new(10, "Flex")
cat_2 = AngryCat.new(5, "Miu Miu")

# Quiz 3 - Exercise 4
class Cat

  attr_reader :type

  def initialize(type)
    @type = type
  end

  def to_s
    puts "I am a #{type} cat"
  end

end

cat = Cat.new("tabby")
# better version
class Cat

  attr_reader :type

  def initialize(type)
    @type = type
  end

  def display_type
    puts "I am a #{type} cat"
  end

end


