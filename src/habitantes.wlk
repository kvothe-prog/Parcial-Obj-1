import planeta.*
import armas.*

class Persona {
	var property edad
	
	method inteligencia() { return if (edad.between(20,40)) {12} else {8} }
	method potencia() = 20
	method esDestacada() = edad == 25 or edad == 35
	method ofrecerTributo(planeta) { }
	method valor() { return self.potencia() + self.inteligencia() }
	
}

class PersonaAtleta inherits Persona {
	var property masaMuscular = 4
	var property tecnicas = 2
	
	override method potencia() { return super() + masaMuscular * tecnicas }
	override method esDestacada() { return super() or tecnicas > 5 }
	method entrenar(dias) { masaMuscular = masaMuscular + dias * 0.20 }
	method aprenderTecnica() { tecnicas += 1 }
	
	override method ofrecerTributo(planeta) {
		planeta.construirMurallas(2)
	}
	
}

class PersonaDocente inherits Persona {
	var property cursos = 0
	
	override method inteligencia() { return super() + cursos * 2 }
	override method esDestacada() { return cursos > 3 }
	override method ofrecerTributo(planeta) {
		planeta.fundarMuseo()
	}
	override method valor() { return super() + 5 }
	
}

class PersonaSoldado inherits Persona {
	const property armas = []
	
	override method potencia() { return super() + ( armas.sum({ a => a.potencia(self) })) }
	override method ofrecerTributo(planeta) {
		planeta.construirMurallas(5)
	}
}

