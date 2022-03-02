import Actividades.*
import Deporte.*
import Argumentos.*

class Filosofo{
  var nombre
  var edad // La edad se encuentra en dias segun como se modeló la información
  const actividades = [] // Lista de objetos (descritos en archivo Actividades.wlk)
  const honorificos = #{}
  var nivelDeIluminacionStandard
  
  // Parte del 5)
  const argumentos = [] // Lista de objetos (descritos en archivo Argumentos.wlk)
  method tieneMitadDeArgumentosEnriquecedores(){
    return argumentos.size() <= argumentos.filter{argumento => argumento.esEnriquecedor()}.size() / 2
  }
  method agregarArgumento(unArgumento){
    argumentos.add(unArgumento)
  }
  
  // 1)
  method presentate(){
    return nombre + " " + honorificos.join(", ")
  }
  
  // 2)
  method estaEnLoCorrecto() = self.nivelDeIluminacion() > 100
  
  
  // Metodos auxiliares del 3
  method agregarHonorifico(unHonorifico){ honorificos.add(unHonorifico) }
  method agregarHonorificoElBorracho(){ honorificos.add("El borracho") }
  
  method juntarseEnAgoraCon(otroFilosofo){
    self.aumentarIluminacionEn(otroFilosofo.decimaParteDeIluminacion())
  }
  method tomarVino(){
    self.agregarHonorificoElBorracho()
    self.reducirIluminacionEn10()
  }
  method decimaParteDeIluminacion() = nivelDeIluminacionStandard / 10
  method aumentarIluminacionEn(unAumento) { nivelDeIluminacionStandard += unAumento }
  method reducirIluminacionEn(unDecremento) { nivelDeIluminacionStandard -= unDecremento }
  method reducirIluminacionEn10() { self.reducirIluminacionEn(10) }
  
  method edadEnAnios() = edad.div(365)
  
  method puedeSerSabio() = self.edadEnAnios() == 60
  method agregarSabio(){ self.agregarHonorifico("El sabio") }
  method agregarSabioSegun(){
    if(self.puedeSerSabio()){
      self.agregarSabio()
    }
  }
  
  method practicarDeporte(unDeporte){
    self.rejuvenecerTantosDias(unDeporte.cuantoRejuvenece())
  }
  method meditarBajoCascada(alturaCascada){
    self.aumentarIluminacionEn(10 * alturaCascada)
  }
  method envejecerUnDia(){ self.envejecerTantosDias(1) }
  method envejecerTantosDias(envejecimiento){ edad += envejecimiento }
  method rejuvenecerTantosDias(rejuvenecimiento){ edad -= rejuvenecimiento }
  
  method nivelDeIluminacion(){
    return nivelDeIluminacionStandard + 10 * self.edadEnAnios() 
    // Cada 365 días vividos cumplen un año y aumentan su nivel de iluminación en 10 unidades
  }
  
  method realizarTodasLasActividades(){
    actividades.forEach{ actividad => actividad.realizarActividad(self) }
  }
  
  // 3)
  method vivirUnDia(){
    self.realizarTodasLasActividades()
    self.envejecerUnDia()
    self.agregarSabioSegun()
  }
}

// Instancias de prueba
const diogenes = new Filosofo(nombre = "Diogenes", edad = 10000, honorificos = #{"El cinico"}, nivelDeIluminacionStandard = 101)
const confucio = new Filosofo(nombre = "Confucio", edad = 12000, honorificos = #{"El sabio", "Maestro"}, nivelDeIluminacionStandard = 30)

class FilosofoContemporaneo inherits Filosofo{
  override method presentate(){
    return "hola"
  }
  override method nivelDeIluminacion(){
    if(self.esAmanteDeLaBotanica()){
      return super() * 5
    } else {
      return super()
    }
  }
  method esAmanteDeLaBotanica(){
    return honorificos.any{ titulo => titulo.contains("botanica") }
    // En este caso no dice cual es la condicion para determinar cuando
    // se devuelve true, así que voy a evaluar los titulos honorificos
    // si alguno dice algo de botanica para decidir
  }
}

/*
 * Otra alternativa para saber si es amante de la botanica podria ser crear una variable
 * que sea necesaria a la hora de instanciar a los objetos de tipo FilosofoContemporaneo
 * quedaria:
 * 
 * const filosofo = new FilosofoContemporaneo(
 *    amanteDeLaBotanica = true, 
 *    nombre = "Filosofo prueba", 
 *    edad = 18000, 
 *    honorificos = #{"El mago"}, 
 *    nivelDeIluminacionStandard = 30)
 * 
 * y luego evaluo el booleano amanteDeLaBotanica y listo
 */

