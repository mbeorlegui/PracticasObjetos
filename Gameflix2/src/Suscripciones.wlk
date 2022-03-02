object premium{
  const property costo = 50
  method permiteJugar(unJuego) = true
}

object base{
  const property costo = 25
  method permiteJugar(unJuego) = unJuego.esBarato()
}

class SuscripcionCategorica {
  const property costo
  const categoria
  
  method permiteJugar(unJuego) = unJuego.esDeCategoria(categoria)
}

const prueba = new SuscripcionCategorica(costo = 0, categoria = "Demo")
const infantil = new SuscripcionCategorica(costo = 10, categoria = "Infantil")

// Haciendo una clase suscripcion categorica me ahorro repetir logica
// Para los tipos de prueba e infantil