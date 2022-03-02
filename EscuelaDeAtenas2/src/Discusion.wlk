import Filosofo.*

class Discusion {
  const unFilosofo
  const otroFilosofo
  
  method esBuena(){
    return self.ambosPartidosConMitadDeArgumentosEnriquecedores() && 
           self.ambosPartidosEstanEnLoCorrecto()
  }
  
  method ambosPartidosEstanEnLoCorrecto(){
    return unFilosofo.estaEnLoCorrecto() && 
           otroFilosofo.estaEnLoCorrecto()
  }
  method ambosPartidosConMitadDeArgumentosEnriquecedores(){
    return unFilosofo.tieneMitadDeArgumentosEnriquecedores() && 
           otroFilosofo.tieneMitadDeArgumentosEnriquecedores()
  }
}
