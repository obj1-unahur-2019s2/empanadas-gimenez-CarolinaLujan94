object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var dinero = 0
	var deuda = 0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	method cobrarSueldo () {
		dinero += sueldo
		if (dinero >= deuda) {
			deuda -= dinero
			deuda = 0
		} else {
			deuda -= dinero
			dinero = 0
		}
	}
	method totalDinero() {
		return dinero
	}
	method totalCobrado()
	
} 

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var dinero = 0
	var totalCobrado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
    
    method cobrarSueldo () {
		dinero += self.sueldo()
		totalCobrado += self.sueldo()
	}	
	method totalCobrado() = return totalCobrado
	
	method totalDinero() {
		return dinero
	}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
