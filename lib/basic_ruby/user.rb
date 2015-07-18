class User 

	attr_accessor :last_name, :birth_data, :address #Hace la misma funcion que definir setter y getter
	attr_reader :age, :id #define un metodo de solo lectura (setter)
	attr_writer :age #define un metodo de solo escritura (getter)

	@@users = [] #VARIABLE DE CLASE -  SE DEFINE CON DOBLE @	

	def first_name=(value)
		@first_name = value
	end


	def first_name
		@first_name
	end


	# def first_name
		# "SOBRE ESCRITURA"  el ultimo metodo defino es el que se tomara en cuenta, en caso de sobreescribura de metedos.
	# end

	def save
		@id = @@users.count + 1
		@@users << self # asigna el valor al arreglo - self se sefiere a la instacia del usuario
	end

	# Busca un usuario en especifico
	def self.find(id)
	   @@users.find { |user| user.id == id }
	end

	#  GET ALL USERS
	def self.all
		@@users
	end

	#  GET COUNT USERS
	def self.count
		@@users.count 
	end

	# DELETE USER
	def destroy
		@@users.delete(self)
	end 
end

