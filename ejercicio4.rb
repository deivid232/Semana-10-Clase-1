# Ejercicio 4: Módulos
# Transformar la clase Semana en un módulo y obtener la misma salida:
module Ejercicio
  class Semana
    @@primer_dia = 'Lunes'

    def self.primer_dia
      @@primer_dia
    end

    def self.en_un_meses
      "Un mes tiene 4 semanas."
    end

    def self.en_un_año
      "Un año tiene 52 semanas."
    end
  end
end

puts "La semana comienza el día #{Ejercicio::Semana.primer_dia}"
puts Ejercicio::Semana.en_un_meses
puts Ejercicio::Semana.en_un_año
