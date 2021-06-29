class Pistolete {
	const property largo
	
	method potencia(soldado){
		return if (soldado.edad() > 30) { largo * 3 } else { largo * 2}
	}
}

class Espadon {
	const property peso 
	method potencia(soldado){
		return if (soldado.edad() < 40 ) { peso * 0.5 } else { 6 }
	}
}