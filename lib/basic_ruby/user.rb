class User 


	attr_accessor :last_name #Hace la misma funcion que definir setter y getter
	attr_reader :age #define un metodo de solo lectura (setter)
	attr_writer :age #define un metodo de solo escritura (getter)

	def first_name=(value)
		@first_name = value
	end


	def first_name
		@first_name
	end





end

