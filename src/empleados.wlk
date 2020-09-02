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
	var dinero = 0
	var deuda = 0
	
	method sueldo() {
		return sueldo
	}
	method sueldo(valor) {
		sueldo = valor
	}
	method dinero () {
		return dinero
	}	
	method deuda () {
		return deuda
	}
	method recibirSueldo(valor) {
		sueldo = valor
		if (deuda > 0) {
			deuda -= valor
			dinero -= deuda.min(0)
			deuda = deuda.max(0)
		}else{
			dinero += sueldo
		}
	}
	method totalCobrado () {
		// No hace nada
	}
	method gastar(valor) {
		dinero -= valor
		deuda -= dinero.min(0)
		dinero -= dinero.min(0)
	}
}

object baigorria {
	var empanadasVendidas = 0
	var sueldo = 0
	var totalCobrado = 0
	
	method sueldo() {
		return sueldo
	}
	method totalCobrado () {
		return totalCobrado
	}
	method venderEmpanadas(cantidad) {
		empanadasVendidas += cantidad
	}
	method recibirSueldo(valor) {
		sueldo = empanadasVendidas*valor
		totalCobrado += sueldo
		empanadasVendidas = 0
	}
}