object gimenez {
	var fondoParaSueldos = 300000
	
	method fondoParaSueldos() {
		return fondoParaSueldos
	}
	
	method pagarSueldo(persona) {
			fondoParaSueldos -= persona.sueldo()
			persona.recibirSueldo()
				
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
	method recibirSueldo() {
		if (deuda > 0) {
			deuda -= sueldo
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
	var totalCobrado = 0
	const gananciaPorEmpanada = 15
	
	method sueldo() {
		return empanadasVendidas*gananciaPorEmpanada
	}
	method totalCobrado () {
		return totalCobrado
	}
	method gananciaPorEmpanada() {
		return gananciaPorEmpanada
	}
	
	method venderEmpanadas(cantidad) {
		empanadasVendidas += cantidad
	}
	method recibirSueldo() {
		totalCobrado += self.sueldo()
		empanadasVendidas = 0
	}
}