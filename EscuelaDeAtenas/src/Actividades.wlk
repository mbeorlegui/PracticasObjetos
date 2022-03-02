import Filosofo.*
import Deporte.*

/*
 * Para este caso, entiendo que no vale la pena hacer una clase
 * "Actividad", de la cual hereden todas las actividades de aca abajo
 * ya que solamente contendría un método abstracto (realizarActividad).
 * 
 * Luego, a las actividades las hago como Clases, para poder
 * instanciarlas como lo hago debajo de todo, asi no tengo
 * problemas para aplicarlas sobre los filosofos.
 */

class TomarVino {
	method realizarActividad(unFilosofo){
	  unFilosofo.tomarVino()
	}
}
class JuntarseEnAgora {
  var otroFilosofo
  method realizarActividad(unFilosofo){
    unFilosofo.juntarseEnAgoraCon(otroFilosofo)
  }
}
class AdmirarPaisaje {
  method realizarActividad(unFilosofo){
    // "En lo que nos compete, no hace nada"
  }
}
class MeditarBajoCascada {
  var alturaCascada
  method realizarActividad(unFilosofo){
    unFilosofo.meditarBajoCascada(alturaCascada)
  }
}
class PracticarDeporte {
  var unDeporte
  method realizarActividad(unFilosofo){
    unFilosofo.practicarDeporte(unDeporte)
  }
}

// Actividades de ejemplo
const juntarseEnAgoraConPitagoras = new JuntarseEnAgora(otroFilosofo = diogenes)
const tomarVinoConConfucio = new JuntarseEnAgora(otroFilosofo = confucio)
const admirarUnPaisaje = new AdmirarPaisaje()
const meditarEnIguazu = new MeditarBajoCascada(alturaCascada = 1000)
const practicarFutbol = new PracticarDeporte(unDeporte = futbol)
