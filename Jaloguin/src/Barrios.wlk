import Ninios.*

class Barrio {
	const property ninios = []
	
	method tresNiniosConMasCaramelos() = self.ordenarPorCaramelos().take(3)
	method ordenarPorCaramelos() = ninios.sortedBy{ 
	  ninio1, ninio2 => ninio1.caramelos() > ninio2.caramelos()
	}
	
	method niniosConMasDe10Caramelos() = 
	 self.ninios().filter{ unNinio => unNinio.tieneMasDe10Caramelos() }
	
	method elementosDeNiniosConMasDe10Caramelos() = 
	 self.niniosConMasDe10Caramelos().flatMap {unNinio => unNinio.elementos()} .asSet()
	 
	 // flatMap -> Aplica un map a todos los elementos, y luego los junta
	 // en este caso, el metodo se fija cuales son los ninios que tienen mas de 10 caramelos
	 // luego se fija cuales son los elementos que tiene cada uno (con el map), y los junta
	 // con el flatten. El asSet() esta para evitar que se repitan elementos
}
