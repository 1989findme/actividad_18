file = File.open('casino.txt', 'r')
data = file.readlines##==> lectura del archivo, lo convierte a un arreglo general
file.close


class Table
  attr_reader :mesa , :scores
  def initialize (mesa, *scores)
    @mesa = mesa
    @scores = scores.map(&:to_i)
  end

  def average
    @scores.inject(&:+) / @scores.size
  end

  #   maximo = 0
  # def score_max
  #     if @scores > maximo
  #       maximo = @scores
  #     end
  # end

end

table =[]
data.each do |line|
  ls = line.split(', ')
  table << Table.new(*ls)
end



table.each do |table|
  puts table.mesa
  puts table.average
end

# table.each do |table|
#   puts score_max
# end


# Crear una clase Table cuyo constructor reciba el nombre de la mesa y las
# recaudaciones correspondientes de cada día.
# Crear un método que permita leer el archivo e instanciar una mesa por línea del
# archivo.
# Crear métodos que permitan:
# Conocer el mayor valor recaudado, y a que mesa y día corresponde.
# Calcular el promedio total de lo recaudado por todas las mesas en todos los
# Actividad 018 - Objetos
# Ejercicio 1: Objetos y archivos.
# días
