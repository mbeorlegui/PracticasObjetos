object sordo{
  method suEfecto(unaPersona, otraPersona, unObjeto){
    unaPersona.agregarObjetoCercano(otraPersona.primerObjetoCercano())
    otraPersona.removerPrimerObjeto()
  }
}

object dejameComerTranquilo{
  method suEfecto(unaPersona, otraPersona, unObjeto){
    unaPersona.objetosCercanos().addAll(otraPersona.objetosCercanos())
    otraPersona.objetosCercanos().clear()
  }
}

object charlarConOtrasPersonas{
  var posicionAuxiliar
  method suEfecto(unaPersona, otraPersona, unObjeto){
    posicionAuxiliar = unaPersona.suPosicion()
    unaPersona.cambiarPosicionA(otraPersona.suPosicion())
    otraPersona.cambiarPosicionA(posicionAuxiliar)
  }
}

object pasarElBenditoElemento{
  method suEfecto(unaPersona, otraPersona, unObjeto){
    unaPersona.agregarObjetoCercano(unObjeto)
    otraPersona.removerObjetoCercano(unObjeto)
  }
}