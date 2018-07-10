# Ejercicio 6: Mixins.
# Crear una clase Student con un método constructor que recibirá
# 3 argumentos (nombre, nota1 y nota2). Cada una de las notas
# tendrá, por defecto, valor 4 en el caso que no se ingrese una
# nota al momento de crear una nueva instancia.
#
# La clase también debe tener una variable de clase llamada
# quantity la que será iniciada en 0 y se incrementará en 1 cada
# vez que se instancie un nuevo objeto.
#
# Crear un módulo Test con un método result. Este método debe
# calcular el promedio de 2 notas y si ese promedio es superior a
# 4 entregrar un mensaje que debe decir "Estudiante aprobado".
# En caso contrario, enviará un mensaje "Estudiante reprobado".
#
# Crear un segundo módulo Attendance con un método student_quantity
# que permita mostrar en pantalla la cantidad de estudiantes creados.
#
# Añadir a la clase Student el módulo Test como métodos de instancia y
# el módulo Attendance como métodos de clase.
#
# Crear 10 objetos de la clase Student y utilizar los métodos
#  creados para saber si los alumnos están aprobados o no y,
#  finalmente, mostrar el total de alumnos creados.

module Test
  def result(arg1, arg2)
    average = (arg1 + arg2) / 2
    rpta = 'Estudiante aprobado' if average >= 4.0
    rpta = 'Estudiante reprobado' if average < 4.0
    rpta
  end
end

module Attendance
  def student_quantity
    "Cantidad de Alumnos = #{self.quantity}"
  end
end

class Student
  @@quantity = 0
  include Test
  extend Attendance
  attr_accessor :name, :grade1, :grade2

  def initialize(nombre, nota1 = 4.0, nota2 = 4.0)
    @name = nombre
    @grade1 = nota1
    @grade2 = nota2
    @@quantity += 1
  end

  def self.quantity
    @@quantity
  end

end

students = []
10.times do |i|
  student_name = "Estudiante #{i + 1}"
  grade1 = rand(1.0..7.0).round(2)
  grade2 = rand(1.0..7.0).round(2)
  average = ((grade1 + grade2) / 2).round(2)
  new_student = Student.new(student_name, grade1, grade2)
  puts "#{student_name}, Nota 1: #{grade1}, Nota 2: #{grade2}, Promedio: #{average}, #{new_student.result(grade1, grade2)}"
  students << new_student
end

puts ''
puts Student.student_quantity
puts ''
