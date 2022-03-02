import CriteriosDeObjetos.*
import CriteriosDeComida.*

class Comensal{
  const nombre = ""
  var property objetosCercanos = []
  var criterioDeObjetos = sordo
  var property suPosicion = "1@1"
  // No se como modelar la posicion, asi que lo dejo como string, 
  // pero se puede cambiar sin problemas
  var property historialDeComidas = []
  var property criterioDeComidas = vegetariano
  
  method pedirObjetoA(otraPersona, unObjeto){
    if(otraPersona.tieneCerca(unObjeto)){
      criterioDeObjetos.suEfecto(self, otraPersona, unObjeto)
    }
  }
  method tieneCerca(unObjeto) = objetosCercanos.contains(unObjeto)
  method primerObjetoCercano() = objetosCercanos.first()
  method cambiarPosicionA(nuevaPosicion){
    suPosicion = nuevaPosicion
  }
  method agregarObjetoCercano(unObjeto){
    objetosCercanos.add(unObjeto)
  }
  method removerObjetoCercano(unObjeto){
    objetosCercanos.remove(unObjeto)
  }
  method removerPrimerObjeto(){
    objetosCercanos.remove(self.primerObjetoCercano())
  }
  method aComerrr(laComida){
    criterioDeComidas.comer(self, laComida)
  }
  method comerComida(laComida){
    historialDeComidas.add(laComida)
  }
  
  method estaPipon() = self.ingirioComidaPesada()
  method ingirioComidaPesada() = historialDeComidas.any{ comida => comida.calorias() > 500 }
  
  method laEstaPasandoBien() = 
    self.esOsky() || self.esMoni() && self.seSentoEn1a1() || 
    self.esFacu() && self.comioCarne() || self.esVero() && self.noTieneMasDe3ElementosCerca()
  
  method nombreEs(unNombre) = nombre == unNombre
  
  method esOsky() = self.nombreEs("Osky")
  method esMoni() = self.nombreEs("Moni")
  method esVero() = self.nombreEs("Vero")
  method esFacu() = self.nombreEs("Facu")
  
  method seSentoEn1a1() = suPosicion == "1@1"
  method comioAlgo() = not historialDeComidas.isEmpty()
  method comioCarne() = historialDeComidas.any{ comida => comida.esCarne() }
  method noTieneMasDe3ElementosCerca() = objetosCercanos.size() <= 3
}

const osky = new Comensal(nombre = "Osky", objetosCercanos = ["plato", "aceite"])

/*
 * Polimorfismo: propiedad por la que es posible enviar 
 *              mensajes sintácticamente iguales 
 *              a objetos de tipos distintos.
 * Se utilizo en el metodosuEfecto(), el cual se comporta distinto segun
 * cada tipo de
 * 
 * Herencia: es un mecanismo que permite derivar una clase a otra clase
 * 
 * Composicion: insertar objetos de otras clases dentro de una nueva clase
 *              (meter un objeto dentro de otro)
 *  
 */
