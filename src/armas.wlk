object ballesta {
	var flechas = 10
	
	method potencia() = 4
	method estaCargada() = flechas >= 1
	method usar(){
		flechas -= 1
	}
	method flechas() = flechas
}

object jabalina{
	var cargada = true
	
	method potencia() = 30
	method estaCargada() = cargada
	method usar(){
		cargada = false
	}
}