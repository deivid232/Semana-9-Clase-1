# Ejercicio 7: Objetos y archivos.
# Utilizando el mismo archivo del ejercicio anterior:
#
# La tienda desea generar un nuevo catálogo que no incluya el último precio correspondiente a
# cada producto debido a que ya no comercializa productos de talla XS.
#
# Se pide generar un método que reciba como argumento los datos del archivo catalogo.txt y
# luego imprima el nuevo catálogo solicitado en un archivo llamado nuevo_catalogo.txt
# def create_catalogo(text1, text2)
#   file = File.open('index1.html', 'w') do |file|
#     file.puts "<p>#{text1}</p>"
#     file.puts "<p>#{text2}</p>"
#     file.close
#   end
# end
class Product
  attr_reader :name, :large, :medium, :small, :xsamll
  def initialize(name, *medida)
    @name = name
    @medida = medida.map(&:to_i)
  end
end

def eliminar_producto
products_list = []
data = []
ls = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines.map(&:chomp)}
data.each do |prod|
  ls = prod.split(', ')
  ls.delete_at(4)
  products_list << Product.new(*ls)
  # print ls
  #print products_list

    File.open('catalogo-nuevo.txt', 'a') do |nuevo|
      nuevo.puts "#{ls}"
      nuevo.close
    end

  end
end
eliminar_producto
