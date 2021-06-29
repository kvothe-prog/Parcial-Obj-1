import habitantes.*
import armas.*

class Planeta {
	const property habitantes = []
	var property cantidadMuseos = 0
	var property longitudMurallas = 0
	
	method delegacionDiplomatica() {
		return habitantes.filter({ h => h.esDestacada() })
	}
	
	method valorInicialDefensa(){
		return habitantes.filter({ h => h.potencia() > 29 }).size()
	}
	
	method esCulto(){
		return ( cantidadMuseos > 1 ) and ( habitantes.all({ h => h.inteligencia() > 9 }) )
	}
	
	method potenciaReal(){
		return habitantes.sum({ h => h.potencia() })
	}
	
	method construirMurallas(longitud) { longitudMurallas = longitudMurallas + longitud }
	method fundarMuseo() { cantidadMuseos += 1 }
	
	method potenciaAparente() {
		return habitantes.max({ h => h.potencia() }).potencia() * habitantes.size()
	}
	
	method necesitaReforzarse() {
		return self.potenciaAparente() >= (self.potenciaReal() * 2 )
	}
	
	method recibirTributo()  {
		habitantes.forEach({ h => h.ofrecerTributo(self) })
	}
	
	method habitantesValiosos(){
		return habitantes.filter({ h => h.valor() > 39 })
	}
	
	method apaciguarPlaneta(planeta){
		self.habitantesValiosos().forEach({ h => h.ofrecerTributo(planeta) })
	}
	
}
