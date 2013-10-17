# Implementar en este fichero la clase para crear objetos racionales

 require "./gcd.rb"

class Fraccion
  
  attr_reader :a, :b

  def initialize(a, b)
 
    @a=a  #numerador
    @b=b  #denominador
  end

  #Transformacion a string
  
  def to_s
    "#{@a}/#{@b}"
  end
 
  #Metodo para suma. 
 
  def +(other)   
    n=mcm(b, other.b) 
    @a=(@a*n/@b)+(other.a*n/other.b)
    @b=n
    self.to_s #devuelve el resultado como cadena. la operacion modifica el valor del objeto.

  end

  #Metodo para la resta.

  def -(other)
    n=mcm(b, other.b)
    @a=(@a*n/@b)-(other.a*n/other.b)
    @b=n
    self.to_s  #devuelve el resultado como cadena. la operacion modifica el valor del objeto.
   
  end

  #Metodo para la multiplicacion

  def *(other)
    @a=other.a*@a
    @b=other.b*@b
    self.to_s  #devuelve el resultado como cadena. la operacion modifica el valor del objeto.

  end

  #Metodo para la division

  def /(other)
    @a=other.b*@a
    @b=other.a*@b
    self.to_s #devuelve el resultado como cadena. la operacion modifica el valor del objeto.
  end


end
  
  #Funcion auxiliar para el calculo de sumas y restas recionales.

def mcm(u, v)
  u*v/gcd(u, v)
end 

  #Ejemplo de funcionamiento

a=Fraccion.new(4,3)
b=Fraccion.new(8,5)

#puts(a+b)

