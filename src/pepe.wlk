import categorias.*
import bonos.*

object pepe {
		var categoria 
		var bonoPresentismo
		var bonoResultado
		var cantFaltas
		//SET Y GET
 
 method getCategoria = categoria
 method setCategoria (cat){
 	categoria = cat
 }

 method getBonoPresentismo = bonoPresentismo
 method setBonoPresentismo (bono){
 	bonoPresentismo= bono
 }
 
 method getBonoResultado = bonoResultado
 method setBonoResultado (bono){
 	bonoResultado= bono
 	}
 
 method getBonoResultado = bonoResultado
 method setBonoResultado (bono){
 	if (bono != bonoDependeFaltas) {
 		bonoResultado= bono
 	}
 
 method getCantFaltas = cantFaltas
 method setCantFaltas(faltas){
 	cantFaltas= faltas
 	}
 
 //Otra manera sin return
 
 method sueldoNeto (){
 	return categoria.neto()
 }
 }
 /*
  * method sueldoNeto()= categoria.neto()
  */
 method sueldo()
 {
 	return self.sueldoNeto()+ bonoPresentismo.monto(self)+ bonoResultado.monto(self)
 }
 
}
/* Como en el metodo monto echo en "bonos" me pide que le pase un objeto como parametro 
 * entonces ahora cuando quiera usar el metodo le mando como objeto a pepe porque es del que 
 quiero saber. Por ello uso el self*/