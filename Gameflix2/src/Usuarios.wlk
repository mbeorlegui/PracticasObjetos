import Suscripciones.prueba

class Usuario {
	var suscripcionActual
	var dineroDisponible
	var humor

	method actualizarSuscripcion(nuevaSuscripcion){
	  suscripcionActual = nuevaSuscripcion
	}
	method pagarSuscripcionActual(){
	  self.reducirDineroEn(suscripcionActual.costo())
	}
	
	method reducirDineroEn(reductor){
	  dineroDisponible -= reductor
	}
	
	method puedePagarPlanActual() = dineroDisponible >= suscripcionActual.costo()
	
	method pagarSuscripcion(){
	  if(self.puedePagarPlanActual()){
	    self.pagarSuscripcionActual()
	  } else {
	    self.actualizarSuscripcion(prueba)
	  }
	}
	
	method jugar(unJuego, unasHoras){
	  if(suscripcionActual.permiteJugar(unJuego)){
	    unJuego.serJugado(self, unasHoras)
	  } else {
	    throw new Exception(message = "Con esta suscripcion no es posible jugar a este juego!")
	  }
	}
	method reducirHumorEn(reductor){
    humor -= reductor
  }
  method aumentarHumorEn(reductor){
    humor += reductor
  }
	method comprarSkins(){
	  if(dineroDisponible < 30)
	   throw new Exception (message = "El dinero del usuario no es suficiente para comprar skins!")
	  self.reducirDineroEn(30)
	}
}
