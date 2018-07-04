
# Se tiene un archivo llamado catalogo.txt que contiene los nombres de los productos que ofrece
#una tienda junto con los precios de las tallas L, M, S y XS.
#
# El siguiente código define la clase Product y además realiza la lectura del archivo.
#
# Se pide:
#
# Optimizar el código implementando el operador splat al momento de instanciar los productos
#
# Generar un método que permita calcular el promedio de precio por producto.

class Product
  attr_reader :name, :large, :medium, :small, :xsamll
  def initialize(name, *medida)
    @name = name
    @medida = medida.map(&:to_i)

  end
  def promedio_productos
    @medida.inject(&:+)/@medida.size.to_i

  end
end

products_list = []
data = []
ls = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines.map(&:chomp)}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
 end

products_list.each do|productos|
  puts "Nombre: #{productos.name}, Promedio: #{productos.promedio_productos}"
end
