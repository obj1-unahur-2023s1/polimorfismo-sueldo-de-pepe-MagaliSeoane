object bonoPorcentaje {
	method monto (empleado){
		return empleado.getCategoria().neto()*0.1
	}
}

object bonoFijo {
	method monto (empleado) {
		return 80
	}
}

object bonoDependeFaltas {
	
    method monto (empleado) {
    const faltas = empleao.faltas()
    
     if (faltas==0){
     	return 100
     }
     else (if (faltas == 1){
     	return 50
     }
     	else {return bonoNulo.monto()}
	}
}

object bonoNulo {
	method monto (empleado){
		return 0
	}
}
