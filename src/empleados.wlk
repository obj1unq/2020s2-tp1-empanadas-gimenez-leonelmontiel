//Escribir aqui los objetos
object gimenez {
	var fondoParaSueldos = 300000
	
	method fondoParaSueldos() {
		return fondoParaSueldos
	}
	
	method pagarSueldo(persona, valor) {
		persona.recibirSueldo(fondoParaSueldos.min(valor))
		fondoParaSueldos = 0.max(fondoParaSueldos - valor)
	}
}

object galvan {
	var sueldo = 15000
	
	method sueldo() {
		return sueldo
	}
	
	method recibirSueldo(valor) {
		sueldo += valor
	}
}