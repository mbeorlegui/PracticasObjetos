class AdultoComun {
  var niniosGolososQueIntAsustarloAntes = 0
  
  method tolerancia() = 10 * niniosGolososQueIntAsustarloAntes
  
  method puedeSerAsustadoPor(unNinio) = self.tolerancia() < unNinio.capacidadDeAsustar()
  method caramelosQuePuedeDar() = self.tolerancia() / 2
  method asustarsePor(unNinio){
    unNinio.aumentarCaramelosEn(self.caramelosQuePuedeDar())
    self.aumentarCuentaDeGlotones(unNinio)
  }
  method serAsustadoPor(unNinio){
    if(self.puedeSerAsustadoPor(unNinio)){
      self.asustarsePor(unNinio)
    } else{
      throw new Exception(message = "Atencion, este ninio no puede asustar a este Adulto!")
    }
  }
  method aumentarCuentaDeGlotones(unNinio){
    if(unNinio.esGoloso()){
      niniosGolososQueIntAsustarloAntes++
    }
  }
}

class Abuelo inherits AdultoComun {
  override method puedeSerAsustadoPor(unNinio) = true
  override method caramelosQuePuedeDar() = super() / 2
}

class AdultoNecio inherits AdultoComun{
  override method puedeSerAsustadoPor(unNinio) = false
}
