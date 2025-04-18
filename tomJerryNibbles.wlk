object tom {
  var energia = 50
  var ultimoRatonComido = jerry
  var distanciaRecorrida = 0
  
  method energia() = energia
  
  method ratonQueComio() = ultimoRatonComido
  
  method velocidadMax() = 0.max(5 + (energia / 10))
  
  method distanciaRecorrida() = distanciaRecorrida
  
  method correr(metros) {
    energia = 0.max(energia - (metros / 2))
    distanciaRecorrida += metros
  }
  
  method comer(raton) {
    energia = (energia + 12) + raton.peso()
    ultimoRatonComido = raton
  }
  
  method puedeCazar(distancia) = energia >= (distancia / 2)
  
  method cazar(distancia, raton) {
    if (self.puedeCazar(distancia)) {
      self.correr(distancia)
      self.comer(raton)
    }
  }
}

object jerry {
  var edad = 2
  
  method edad() = edad
  
  method cumpleanos(anos) {
    edad += anos
  }
  
  method peso() = edad * 20
}

object nibbles {
  const peso = 35
  
  method peso() = peso
}

object tunky {
  const peso = 14
  method peso() = peso
}