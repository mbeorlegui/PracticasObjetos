import Ninios.*

class Legion {
	const miembros = []
	
  method capacidadDeAsustar() = miembros.sum { ninio => ninio.capacidadDeAsustar() }
  method caramelosQueTiene() = miembros.sum { ninio => ninio.caramelos() }
	
	method lider() {
    return miembros.max { integrante => integrante.capacidadDeSusto() } 
    // Devuelve el mimbro con la maxima capacidad de susto
  }
  
  method aumentarCaramelos(unaCantidad){
    self.lider().aumentarCaramelosEn(unaCantidad)
  }
  method asustar(unaPersona) {
    unaPersona.serAsustadaPor(self)
  }
}

// Dado un conjunto de niños, crear una legión. Toda legión debe tener al menos dos
// niños, por lo que la creación debe fallar si no se cumple esta restricción.

object crearLegion{
  method crear(ninios){
    self.evaluarCantidad(ninios)
    return new Legion(miembros = ninios)
  }
  method evaluarCantidad(ninios){
    if(ninios.size() < 2){
      throw new Exception(message = "No se puede crear una legion con menos de 2 integrantes!")
    }
  }
}

/* 
 * Nos informan que los niños han aprendido a formar legiones de legiones, es decir,
legiones donde sus miembros pueden ser niños u otras legiones. Si es necesario
hacer algún cambio para soportar este requerimiento, realizarlo. De lo contrario,
explicar porqué es posible.

En este caso no es necesario ya que todo esto se trata polimorficamente,
tanto las legiones como los ninios en lo que respecta a asustar a las personas
*/
