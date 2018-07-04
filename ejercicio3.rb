# Ejercicio 3: Herencia
# Se tiene la clase Vehicle que recibe como argumento un modelo y un año.
# El método engine_start enciende el vehículo.
#
# class Vehicle
#   def initialize(model, year)
#     @model = model
#     @year = year
#     @start = false
#   end
#
#   def engine_start
#     @start = true
#   end
# end
# Se pide:
#
# Crear una clase Car que herede de Vehicle
# El constructor de Car, además de heredar las propiedades de Vehicle,
# debe incluir un contador de instancias de Car.
# Crear un método de clase en Car que devuelva la cantidad de instancias.
# El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.
# Instanciar 10 Cars.
# Consultar la cantidad de instancias generadas de Car mediante el método de clase
#  creado.

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
attr_accessor :contador
  @@contador = 0
  def initialize(model, year)
    super
    @@contador +=1
  end
   def engine_start
     super
     puts "El motor se ha encendido!"
   end

   def self.contador
     puts "La clase se a instanciado #{@@contador}"

   end
end

#  b = Car.new('Toyota', 2015)
# puts b.model
# puts b.year
# puts b.engine_start
# puts Car.contador

# c = Car.new('Toyota', 2015)
# puts "Modelo: #{c.model}, Año#{c.year}"
# puts c.engine_start
# puts Car.contador

puts Car.new('Toyota', '2015').engine_start

10.times do |i|
  puts model = "modelo #{i + 1}"
  puts year = 2000 + i
Car.new(model, year)
end

#puts Car.new(model, year)

# d = Car.new('Toyota', 2015)
# puts d.model
# puts d.year
# puts d.engine_start
# puts Car.contador
# puts b.model
# puts b.year












 #
