class Comida{
  var nombre
  var property esCarne
  var property calorias
}

const pechitoDeCerdo = new Comida(nombre = "Pechito de cerdo", esCarne = true, calorias = 270)

class CriterioDeComidas{
  method comer(comensal, comida){
    if(self.puedeComer(comida)){
      comensal.comerComida(comida)
    }
  }
  method puedeComer(comida)
}

object vegetariano inherits CriterioDeComidas{
  override method puedeComer(laComida) = !laComida.esCarne()
}

object dietetico inherits CriterioDeComidas{
  const topeCalorico = 500
  override method puedeComer(laComida) = laComida.calorias() <= topeCalorico
}

object alternado inherits CriterioDeComidas{
  var comioLaUltimaComida = false
  override method puedeComer(comida) = !comioLaUltimaComida
  
  override method comer(comensal, comida){
    super(comensal, comida)
    comioLaUltimaComida = !comioLaUltimaComida
  }
}

object combinacion inherits CriterioDeComidas{
  const criteriosDeEleccion = []
  
  override method puedeComer(comida){
    return criteriosDeEleccion.all { criterio => criterio.puedeComer(comida) }
  }
}

