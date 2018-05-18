file = File.open('cursos.txt', 'r')
data = file.readlines##==> lectura del archivo, lo convierte a un arreglo general
file.close

class Course
  attr_reader :cursos , :fechas
  def initialize (cursos, *fechas)
    @cursos = cursos
    @fechas = fechas.map(&:to_i)
  end
end

course =[]
data.each do |line|
  ls = line.split(', ')
  course << Course.new(*ls)
  puts ls[0]
end





#
# Se pide:
# Crear una clase Course cuyo constructor reciba el nombre y las fechas de inicio y
# termino de cada curso.
# Crear un método que permita leer el archivo e instanciar una mesa por línea del
# archivo.
# Crear métodos que permitan:
# Saber qué cursos comienzan previo a una fecha entregada como
# argumento.
# Saber qué cursos finalizan posterior a una fecha entregada como
# argumento.
# En ambos el métodos argumento por defecto debe ser la fecha
# de hoy.
# Ambos métodos deben levantar una excepción si la fecha
# recibida es >= 2018-01-01
