// 4)
class Argumento {
	var descripcion // Se supone que es un string
	
	method esEnriquecedor()	
}

class ArgumentoEstoico inherits Argumento{
  override method esEnriquecedor() = true
}
class ArgumentoMoralista inherits Argumento{
  override method esEnriquecedor(){
    return descripcion.split(" ").size() >= 10
  }
}
class ArgumentoEsceptico inherits Argumento{
  override method esEnriquecedor(){
    return descripcion.endsWith('?')
  }
}
class ArgumentoCinico inherits Argumento{
  override method esEnriquecedor(){
    return 0.randomUpTo(100) <= 30
  }
}
class ArgumentoCombinado inherits Argumento{
  const multiplesArgumentos = [] // Es una lista de argumentos
  override method esEnriquecedor(){
    return multiplesArgumentos.all{argumento => argumento.esEnriquecedor() }
  }
}