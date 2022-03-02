import Juegos.*
import Suscripciones.*
import Usuarios.*

object gameflix{
  const juegos = []
  const usuarios = []

  method juegosDeNombre(unNombre){
    return juegos.findOrElse( 
        { juego => juego.seLlama(unNombre) }, 
        { throw new Exception(message = "El juego con ese nombre no existe!")}
    )
    // Uso find y no filter ya que me pide que busque UN juego
    // findOrElse ejecuta el primer bloque, y si no se puede, ejecuta el segundo
  }
  method contieneUnJuegoDeNombre(unNombre) = 
    juegos.any { juego => juego.seLlama(unNombre) }
  method juegoDeCategoria(unaCategoria) = 
    juegos.filter { juego => juego.esDeCategoria(unaCategoria) }
  method juegoRecomendado() = juegos.anyOne()
  method cobrarTodasLasSuscripciones(){
    usuarios.forEach { unUsuario => unUsuario.pagarSuscripcion() }
  }
}