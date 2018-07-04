class Vehicle
  attr_reader :model, :year
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

# c = Vehicle.new('mg', 10)
# puts c.year


class Car < Vehicle
 @@contador = 0
  def initialize(model, year)
   super
   @@contador +=1
  end
  def self.contador
    puts "La clase se a instanciado #{@@contador}"

  end

  def engine_start
    super
    puts "El motor se ha encendido!" if @start = true
  end
end

puts b = Car.new('Toyota', 2015)
puts b.model
puts b.year
puts b.engine_start
puts Car.contador

puts b = Car.new('Toyota', 2015)
puts b.model
puts b.year
puts b.engine_start
puts Car.contador
