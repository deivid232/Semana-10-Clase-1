# Ejercicio 5: Mixins.
# Transformar la clase Herviboro en un módulo. Implementar el módulo en la
# clase Conejo mediante Mixin para poder acceder al método dieta desde la instancia.
# Finalmente imprimir la definición de Hervíboro.

module Herviboro
  @@definir = 'Sólo me alimento de vegetales!'

  def self.definir
    @@definir
  end

  def dieta

    "Soy un Herviboro!"
  end
end

class Animal
  def saludar
    "Soy un animal!"
  end
end

class Conejo < Animal
  include Herviboro
  def initialize(name)
    @name = name
  end
end

conejos = Conejo.new('Bugs Bunny')

a = conejos.saludar
puts a
b = conejos.dieta
puts b
c = Herviboro.definir
puts c
# Pregunta: ¿Por qué es mejor solución la implementación de Mixin que mediante
# Herencia de Herencia?











#
