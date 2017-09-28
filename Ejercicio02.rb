# Agregar un método de instancia llámado lados en ambas clases. El método debe
# imprimir un string con las medidas de los lados.
# Crear un módulo llamado Formula.
# Dentro del módulo Formula crear un método llamado perimetro que reciba dos
# argumentos (lados) y devuelva el perímetro.
# Dentro del módulo Formula crear un método llamado area que reciba dos
# argumentos (lados) y devuelva el área.
# Implementar -mediante Mixin- el módulo en las clases Rectangulo y Cuadrado.
# Instanciar un Rectangulo y un Cuadrado.
# Imprimir el área y perímetro de los objetos instanciados utilizando el método del
# módulo implementado.
module Formula
  def perimetro
    if self.is_a? Cuadrado
      @lado * 4
    elsif self.is_a? Rectangulo
      2*(@largo + @ancho)
    end
  end

  def area
    if self.is_a? Cuadrado
      self.lado * self.lado
    elsif self.is_a? Rectangulo
      self.largo * self.ancho
    end
  end
end

class Rectangulo
  attr_reader :largo, :ancho
  include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end
   def lados
   puts largo
   puts ancho
   end
end

class Cuadrado
  attr_reader :lado
  include Formula
 def initialize(lado)
 @lado = lado
 end
 def lados
   puts largo
   puts ancho
 end
end

c1 = Cuadrado.new(4)
puts c1.area
puts c1.perimetro
r1 = Rectangulo.new(5, 10)
puts r1.perimetro
puts r1.area
