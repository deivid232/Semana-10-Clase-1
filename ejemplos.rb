# class Alumno
#   def initialize(nombre, edad)
#     puts @nombre = nombre
#     puts @edad = edad
#   end
#
#   def estudiar
#      puts 'Estoy estudiando'
#    end
#
#    def self.cantidad_de_alumnos
#      puts 15
#    end
# end
#
# Alumno.new('JP', 27).class.cantidad_de_alumnos

module Foo
  class Bar
      def initialize
        puts 'hola'
      end
  end
end

Foo::Bar.new
