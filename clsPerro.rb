# class Perro
# 	def initialize()
# 	end
# 	def ladrar(nombre)
# 		puts "Hola #{nombre}"
# 		return 
# 	end
# end



class Perro
	def initialize(nombre = 'sin nombre', raza = 'sin raza')
		@nombre = nombre
		@raza = raza
	end
	def ladrar(nombre)
		puts "Hola #{nombre}"
		return 
	end
	def dame_nombre
		return @nombre
	end
	def dame_raza
		return @raza
	end
	attr_accessor :nombre #permite leer y editar atributo nombre
end


### METODOS ANIDADOS

class X
	def initialize()
	end
	def x
		puts "x"
		def y
			puts "y"
		end
		def z
			puts "z"
		end
	end
end

obj = X.new()
obj.x
obj.y
gets()