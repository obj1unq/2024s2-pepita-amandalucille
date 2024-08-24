object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}
/*Agregar a Pepón: Pepón es otra ave que puede comer el alpiste y la manzana y sigue las siguientes reglas:
La energía inicial de pepón es 30.
Sabe decir su energía. 
Cuando come, solo puede aprovechar la mitad de la energía que aporta el alimento
Ejemplo: si tiene 30 de energía y come alpiste su nueva energía es 30 + 20/2 = 40
Cuando vuela gasta 20 fijos más 2 joules por km, 
Ejemplo si tiene 30 de energía y vuela 3 km su nueva energía es: 30 - 20 - 2*3 = 4*/

object pepon {
  var energia = 30

  method energia() {
    return energia
  }
   method comer(alimento) {
    energia = energia + (alimento.energiaQueAporta() / 2)
  }
  method volar(distancia) {
    energia = (energia - 20) - (distancia * 2)
  }
}
/*Agregar a Roque, que es una persona. Tiene un ave, a veces es Pepón, a veces es Pepita,
por lo tanto tiene que entender un mensaje para que se le indique cual es su ave. Inicialmente es pepita.*/
object roque {
  var pajaro = pepita  
  var cantCenas = 0 
  
  method entrenar(_ave){ // defino un metodo para poder modificar la variable 'pajaro'
    pajaro = _ave
    cantCenas = 0
  }
  
  method alimentar (alimento) { //Entiende el mensaje alimentar, que recibe un alimento por parámetro. Al recibir este mensaje roque alimenta a su ave. 
    pajaro.comer (alimento)
    cantCenas = cantCenas + 1 
  }
  /*Entiende el mensaje cenas sin parámetros, el cual devuelve la cantidad de veces que roque dio de alimentar a su ave Desde que la está entrenando.
  (pensar como hacer para recordar este dato)*/   
    method cenas(){
      return cantCenas
  } 
}
