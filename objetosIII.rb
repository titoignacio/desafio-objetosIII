#1

class Anything
def foo
a = 5
end
def bar
@a += 1
end
end
any = Anything.new
any.foo
any.bar
any.a

#2

class Car(model, year)
@model = model
@year = year
end
car = Car.new('Camaro', 2016)
puts "Mi auto favorito es un #{car.model} del año #{car.year}!"

#3

class Store
def initialize(name)
name = @name
end
end
store = store.new('Tienda 1')
puts store.name

#4

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

#5

class Morseable
def initialize(number)
@number = number
end
def generate_hash(number)
# Esto es una aberración y debe ser refactorizado!
h = '-----' if number == 0
h = '.----' if number == 1
Se pide:
Refactorizar el código del método de instancia generate_hash para que los datos estén
contenidos en un hash donde los números serán las claves y la traducción los valores.
El método generate_hash además debe retornar la traducción del número recibido como
argumento.
Ejercicio 6: Arrays y objetos
Dado el siguiente código:
1. Iterar los nombres para crear un nuevo arreglo de objetos de Student.
2. Modificar el objeto para que pueda recibir una nota del alumno.
3. Agregar un getter para la nota.
4. Modificar la iteración para asignar notas incrementales de 1 en adelante.
5. Utilizar un map para obtener todas las notas de los alumnos a partir del arreglo de
estudiantes.
Ejercicio 7: Mascota Virtual
Vamos a generar una mascota virtual y interactuaremos con ella.
h = '..---' if number == 2
h = '...--' if number == 3
h = '....-' if number == 4
h = '.....' if number == 5
h = '-....' if number == 6
h = '--...' if number == 7
h = '---..' if number == 8
h = '----.' if number == 9
end
def to_morse
self.generate_hash(@number)
end
end
m = Morseable.new(3)
print m.to_morse

#6

class Student
attr_accessor :name
def initialize()
@name = name
end
end

#7

def initialize name
@name = name
@sleep = false
@satisfied = 10 # Esta lleno
@fullIntestine = 0 # No necesita ir
puts @name + ' nace '
end

def walk
puts 'Haces caminar a ' + @name + '.'
@satisfied -= 2
@fullIntestine = 2
timeLapse
end

def timeLapse
if @satisfied > 0
# Mueve el alimento del estomago al intestino.
@satisfied = @satisfied - 1
@fullIntestine = @fullIntestine + 1
else # Nuestro mascota esta hambrienta!
if @sleep
@sleep = false
puts '¡Se despierta de repente!'
end
puts '¡' + @name + ' esta hambriento! En su desesperacion, ¡Murio de Hambre!'
exit # Sale del programa.
end
if @fullIntestine >= 10
@fullIntestine = 0
puts '¡Uy! ' + @name + ' tuvo un accidente...'
end
if hungry?
if @sleep
@sleep = false
puts '¡Se despierta de repente!'
end
puts 'El estomago de ' + @name + 'retumba...'
end
if needToGo?
if @sleep
@sleep = false
puts 'Se despierta de repente!'
end
