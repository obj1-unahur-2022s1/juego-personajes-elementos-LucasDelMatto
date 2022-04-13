object castillo {
	var defensa = 150
	
	method altura() = 20
	method defensa() = defensa
	method recibirAtaque(potencia){
		defensa = 0.max(defensa-potencia)
	}
	method valorOtorgado()= defensa*0.2
	method recibirTrabajo(){
		defensa = 200.min(defensa+20)
	}
}

object aurora{
	var viva = true
	
	method altura() = 1
	method viva() = viva
	method recibirAtaque(potencia){
		viva = not(potencia>=10)
	}
	method valorOtorgado()=15
	method recibirTrabajo(){}
}

object tipa{
	var altura = 8
	
	method altura() = altura
	method recibirAtaque(potencia){}
	method valorOtorgado()=altura*2
	method recibirTrabajo(){
		altura ++
	}
}