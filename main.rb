# ### BLOCKS

# class Array 
# 	def iterar
# 		self.each_with_index do |n,i|
# 			self[i] = yield(n) # se ejecuta el yield con el bloque y reemplaza a cada elemento en el arreglo [i]
# 		end
# 	end
# end

# arreglo = [1,2,3]
# arreglo.iterar do |n|  #yield llama a todo el bloque desde "do" en adelante
# 	n**2
# end 
# for i in arreglo
# 	puts i
# end
# gets()




# ### PROCEDURES

# class Array 
# 	def iterar(bloque)
# 		self.each_with_index do |n,i|
# 			self[i] = bloque.call(n)
# 		end
# 	end
# end

# arreglo = [1,2,3]
# arregloDos = [10,5,2,6,7]
# elevarCuadrado = Proc.new do |n|
# 	n**2
# end 
# arreglo.iterar(elevarCuadrado)
# arregloDos.iterar(elevarCuadrado)
# for i in arreglo # ó arregloDos
# 	puts i
# end
# gets()


### METODOS

# require_relative 'clsPerro.rb'
# obj = Perro.new()
# obj.ladrar("pepe")
# gets()


### METODO CONSTRUCTOR

# require_relative 'clsPerro.rb'
# dog = Perro.new('firulais', 'chihuaua')
# puts dog.dame_nombre
# puts dog.dame_raza
# gets()



### METODOS SINGLETON

# require_relative 'clsPerro.rb'
# dog = Perro.new('firulais', 'chihuaua')
# dogDos = Perro.new('boby', 'pastor aleman')
# def dog.hablar
# 	return 'Hola Humano'
# end
# puts dog.hablar
# gets()



### CLASES SINGLETON

# require_relative 'clsPerro.rb'
# dog = Perro.new()
# dogDos = Perro.new()

# class << dog
# 	def hablar
# 		return "hola humano"
# 	end
# end

# if dog.respond_to?(:hablar) then 
# 	puts dog.hablar
# else
# 	puts "este perro no habla"
# end
# gets()




### METODOS ACCESORES

require_relative 'clsPerro.rb'
dog = Perro.new("firulais", "pastor aleman")
dog.nombre = 'nuevo nombre'
puts dog.nombre
gets()