import Elementos.*
import Barrios.*
import Salud.*

class Ninio{
  var actitud
  const property elementos = []
  var property caramelos = 0
  var salud = sano
  
  method capacidadDeAsustar() = self.cuantoAsustanLosElementos() * self.actitud()
  method cuantoAsustanLosElementos() = elementos.sum { elemento => elemento.cuantoAsusta() }
  
  method intentarAsustar(unaPersona){
    unaPersona.serAsustadoPor(self)
  }
  method aumentarCaramelosEn(unaCantidad){
    caramelos += unaCantidad
  }
  method disminuirCaramelosEn(unaCantidad){
    caramelos -= unaCantidad
  }
  method esGoloso() = caramelos > 15
  method tieneMasDe10Caramelos() = caramelos > 10
  
  method comerCaramelos(unaCantidadAComer){
    salud.puedeComer(self, unaCantidadAComer)
    salud.comer(self, unaCantidadAComer)
  }
  method cambiarSaludA(nuevaSalud){
    salud = nuevaSalud
  }
  
  // Aca tengo que rediseñar la actitud que habia fijado antes
  // Ahora va a depender de mi estado
  method actitud() = salud.actitudParaEstado(actitud)
}
