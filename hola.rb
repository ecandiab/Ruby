=begin

to_i convierte a enteres
to_f convierte a reales
to_s convierte a string	

demás estrictos... 
to_str 
to_int  

=end 

$ejemplo = "Hola Mundo global" #var global 

class HolaMundo
	def initialize()
		$ejemplo = "fui modificado"
		@ejemplo = "soy una variable de instancia"  #var instancia 
	end
	def saluda()
		hola = "hola Mundo" #var local
		
		valUno = 1
		valDos = 2

		stringg = "1"
		numero = 4
		stringg = stringg.to_i 

		puts hola 
		puts valUno + valDos
		puts stringg + numero


		puts $ejemplo 
		puts @ejemplo

		resultado = 2 + 3 
		print "La suma de 2 + 3 es igual a: #{resultado} \n" 

		cadena = "hola "
		cadena << "mundo"
		cadena.concat(33)
		print cadena
		
		cadena2 = "ja" * 3
		print cadena2

		print cadena.length


		cadenaUno = "HOLA"
		cadenaDos = "hol"
		resultado = cadenaUno <=> cadenaDos
		resultado = cadenaUno.casecmp(cadenaDos)  # para mayusculas/minusculas
		print resultado # 1 si cadenaUno es mayor, -1 si cadenaDos es mayor, 0 si son iguales

		nombre = "esteban"
		nombre = nombre.capitalize #pone en Alta la 1era letra
		print nombre


		mensaje = "Bienvenido"
		mensaje.each_char{|c| print c
			print "\n"}



		cadenita = "EL CODIGO"
		cadenita = cadenita.center(40,"-")
		print cadenita	



		### IF

		hora = 14
		if hora < 12  #elif para if anidados
			puts "Buenos dias"
		else
			puts "Buenas tardes"			
		end


		prueba = 1
		if not prueba < 2
			puts "la variable es mayor a 2"
		else
			puts "la variable es menor que 2"
		end




		### UNLESS

		bloqueado = "juan"
		unless bloqueado == "juan"
			print "Bienvenido a la Fiesta"
		end






		### CASE

		edad = 2
		respuesta = case edad
			when 0..11 then "Es un ninio"
			when 12..17 then "Es un joven"
			when 18..50 then "Es un Adulto"
			else "error en la variable"
		end
		print respuesta

		sustantivo = "codigoFacilito"
		respuesta = case sustantivo
			when "codigoFacilito", "dxcvut" then "Comunidades de tutoriales"
			when "google", "facebook" then "Empresas internet"
			when 19..150, 18 then "mayor de edad"
			else "sustantivo incorrecto"
		end	
		print respuesta






		### FOR

		for i in(1..10)
			print i
			print "\n"
		end

		for i in(1..10)
			if i == 2
				break # "next": se salta un paso del ciclo, en este caso el 2 / "redo": repite el 2 hasta el infinito 
			end
			print i
			print "\n"
		end






		### EACH, UPTO, DOWNTO, TIMES

		(1..10).each {
			|i| print i
			print "\n"}


		1.upto(10) {
			|i| print i}

		10.downto(1) {
			|i| print i
			print "\n\n"}

		10.times {|i| print i+1
			print "\n"
			} #considera desde el cero en adelante 				



		
		### WHILE, UNTIL

		i = 0
		while i < 5 do 
			print i
			i += 1	
		end


		i = 0  #version alternativa, con begin
		begin
			print i
			i += 1
		end while i < 5 #hace la pega y luego evalua el ciclo



		i = 0
		until i > 5 do 
			print i
			i += 1	
		end



		### ENTRADA DE DATOS

		# puts "cual es tu nombre? "
		# name = gets.chomp
		# print "hola " + name

		# nombre = ARGV[0]
		# print "hola " + nombre 




		### ARREGLOS

		print [1,2,3][0]  #con -1 saca el ultimo, -2 el penultimo, -3 etc...

		arreglo = [1,2,3]<<"hola"  # agregar elementos, versión alternativa: .push("hola")
		print arreglo[-1]
		
 		print "\n"

 	    ejemplo = [1,2,3,4,5,6]
 	    for i in ejemplo  # con each: ejemplo.each do |i|
 	    	puts i
 	    end 

 	    print "\n"	

 	    ejemplo2 = [1,2,3]
 	    otro = ejemplo2.map {|i| i+1}
 	    for i in otro
 	    	puts i
 	    end
 	    print "\n"


 	    ejemplo3 = [1,2,3]
 	    otro2 = ejemplo3.select {|numero| numero % 2 == 0} # filtro
 	    for i in otro2
 	    	puts i
 	    end

 	    print "\n"

 	    ejemplo4 = [1,2,3]
 	    otro3 = ejemplo4.delete_if {|numero| numero > 2 } # borrar
 	    for i in otro3
 	    	puts i
 	    end
 
	end
end

# Hola....
objeto = HolaMundo.new()
objeto.saluda
#gets()
