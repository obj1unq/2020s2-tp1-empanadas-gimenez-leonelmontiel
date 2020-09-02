object gimenez {
	var fondoParaSueldos = 300000
	const gananciaXEmpanada = 15
	
	method fondoParaSueldos() {
		return fondoParaSueldos
	}
	method gananciaXEmpanada() {
		return gananciaXEmpanada
	}
	
	method pagarSueldo(persona, valor) {
		if (valor == gananciaXEmpanada) {
			persona.recibirSueldo(valor)
			fondoParaSueldos -= persona.sueldo()
		}else{
			persona.recibirSueldo(valor)
			fondoParaSueldos -= persona.sueldo()
		}
		
	}
}

object galvan {
	var sueldo = 15000
	
	method sueldo() {
		return sueldo
	}
	method sueldo(valor) {
		sueldo = valor
	}	
	method recibirSueldo(valor) {
		sueldo = valor
	}
}

object baigorria {
	var empanadasVendidas = 0
	var sueldo = 0
	
	method sueldo() {
		return sueldo
	}
	method venderEmpanadas(cantidad) {
		empanadasVendidas += cantidad
	}
	method recibirSueldo(valor) {
		sueldo = empanadasVendidas*valor
	}
}