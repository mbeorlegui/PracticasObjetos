class EstadoSalud {
	method puedeComer(unNinio, unaCantidadAComer){
    if(unNinio.caramelos() < unaCantidadAComer){
      throw new Exception(message = "No le alcanzan los caramelos para comer esa cantidad!")
    }
  }
  
  method comer(unNinio, unaCantidad){
    unNinio.disminuirCaramelosEn(unaCantidad)
    if(unaCantidad > 10){
      self.cambiarSalud(unNinio)
    }
  }
	method cambiarSalud(unNinio)
}

object sano inherits EstadoSalud{
  override method cambiarSalud(unNinio){
    unNinio.cambiarSaludA(empachado)
  }
  method actitudParaEstado(actitud) = actitud
}
object empachado inherits EstadoSalud{
  override method cambiarSalud(unNinio){
    unNinio.cambiarSaludA(enCama)
  }
  method actitudParaEstado(actitud) = actitud / 2
}
object enCama inherits EstadoSalud{
  override method cambiarSalud(unNinio){ } 
  // El metodo en este caso no hace nada,
  // Y estamos obligados a ponerlo
  
  method actitudParaEstado(actitud) = 0
  override method puedeComer(unNinio, unaCantidadAComer){
    throw new Exception(message = "El ninio esta en cama y no puede comer mas!")
  }
}