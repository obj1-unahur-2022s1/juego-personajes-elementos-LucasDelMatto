import cosas.*
import armas.*

object luisa {
	var personajeActivo
	
	method personajeActivo(personaje){
		personajeActivo = personaje
	}
	method aparece(elemento){
		personajeActivo.encontrar(elemento)
	}
}


object floki {
	var arma = ballesta
	
	
	method cambiarArma(unArma){
		arma = unArma
	}
	method encontrar(elemento){
		if (arma.estaCargada()){
			elemento.recibirAtaque(arma.potencia())
			arma.usar()
		}
	}
}


object mario {
	var valorRecolectado = 0
	var alturaEncontrada = 0
	
	method encontrar(elemento){
		valorRecolectado += elemento.valorOtorgado()
		elemento.recibirTrabajo()
		alturaEncontrada = elemento.altura()
	}
	
	method estaFeliz(){return valorRecolectado>=50 or alturaEncontrada>=10}
	method valorRecolectado() = valorRecolectado
}
