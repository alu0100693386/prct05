# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase


	def setup #definicion de variables para el test
		@a=Fraccion.new(2,3)
		@b=Fraccion.new(7,4)
		@c=Fraccion.new(1,2)
		@d=Fraccion.new(1,4)
	end

	def test_simple #Test simple para comprobar funcionalidad
	
		assert_equal(@a+@b,"29/12")
		assert_equal(@b*@c,"7/8")
		assert_equal(@c-@d,"1/4")

	end


#def test_recibe
#
#	assert_raise(RuntimeError){
#		i=Fraccion.new("6", "7")}
#end


	#Liberacion de las variables de prueba

	def tear_down
	end
	
end


