# Ejercicio 4: Constructor con argumentos.
# Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la siguiente estructura:
# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash. Luego generar un método llamado
# ladrar que, mediante interpolación, imprima "Beethoven está ladrando!"
propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
attr_reader :nombre, :raza, :color
 def initialize(propiedades)
   @nombre = propiedades[:nombre]
   @raza = propiedades[:raza]
   @color = propiedades[:color]
 end
 def ladrar
   puts "#{@nombre} #{@raza} #{@color} está ladrando!"
 end
end

perro = Dog.new(propiedades)

puts perro.ladrar

print propiedades
