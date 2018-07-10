# frozen_string_literal: true

# Ejercicio 7: Rack
# Se tiene el archivo config.ru :
#
# #config.ru
# require 'rack'
#
# class MiPrimeraWebApp
#  def call(env)
#   [000, {}, []]
#  end
# end
#
# run MiPrimeraWebApp.new
# Se pide:
#
# Agregar un código de respuesta 200.
# Agregar en los Response Headers un Content-type de tipo text/html.
# Agregar en el Response Body una etiqueta de párrafo que contenga un texto Lorem ipsum.
require 'rack'

class MiPrimeraWebApp
  def call(_env)
    [200, { 'Content-type' => 'text/html' }, ['<p>Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>']]
  end
end

run MiPrimeraWebApp.new
