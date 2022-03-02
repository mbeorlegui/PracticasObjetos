class Deporte {
	var property cuantoRejuvenece
}

const futbol = new Deporte(cuantoRejuvenece = 1)
const polo = new Deporte(cuantoRejuvenece = 2)
const waterpolo = new Deporte(cuantoRejuvenece = polo.cuantoRejuvenece()*2)

/*
 * Haciendo el waterpolo de esta forma, el parametro cuantoRejuvenece
 * queda sujeto al cuantoRejuvenece del polo, de forma tal que si cambio
 * el del polo, automaticamente cambia el de waterpolo
*/
