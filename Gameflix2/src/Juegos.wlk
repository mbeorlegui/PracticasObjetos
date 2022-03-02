import Suscripciones.*

class Juego{
  const nombre
  var precio
  var categoria
  
  method seLlama(unNombre) = nombre.equals(unNombre)
  method esDeCategoria(unaCategoria) = categoria.equals(unaCategoria)
  method esBarato() = precio < 30
}

class JuegoViolento inherits Juego{
  method serJugado(unUsuario, unasHoras){
    unUsuario.reducirHumorEn(unasHoras*10)
  }
}
class MOBA inherits Juego{
  method serJugado(unUsuario, unasHoras){
    unUsuario.comprarSkins()
  }
}
class JuegoTerrorifico inherits Juego{
  method serJugado(unUsuario, unasHoras){
    unUsuario.actualizarSuscripcion(infantil)
  }
}
class JuegoEstrategico inherits Juego{
  method serJugado(unUsuario, unasHoras){
    unUsuario.aumentarHumorEn(unasHoras*5)
  }
}