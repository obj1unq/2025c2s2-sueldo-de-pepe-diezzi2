object pepe {
	var categoria           = cadete
  var faltas              = 0
  var bonoResultadosPepe  = porcentaje
  var bonoPresentismoPepe = normal
  
  // setters

  method cambiarCategoriaA(_categoria) {
      categoria = _categoria
  }

  method cambiarBonoResultadosA(bonoResultados) {
    bonoResultadosPepe = bonoResultados
  }

  method cambiarBonoPresentismoA(bonoPresentismo) {
    bonoPresentismoPepe = bonoPresentismo
  }

  // pepe

  method faltar() {
      faltas = faltas + 1
  }
  
  method calcularBonoResultados(sueldoNeto) =
    if (bonoResultadosPepe == porcentaje) {
      bonoResultadosPepe.bonoResultados(sueldoNeto)
    }
    else bonoResultadosPepe.bonoResultados()

  method calcularBonoPresentismo(sueldoNeto) =
    if (bonoResultadosPepe == porcentaje) {
      bonoResultadosPepe.bonoResultados(sueldoNeto)
    }
    else bonoResultadosPepe.bonoResultados()

  method calcularSueldo() = categoria.sueldoNeto() + self.calcularBonoResultados(categoria.sueldoNeto()) + self.bonoPresentismo(faltas)
}

// CATEGORIAS

object gerente {
  method sueldoNeto() = 15000 
}

object cadete {
  method sueldoNeto() = 20000
}

// BONOS POR RESULTADOS

object porcentaje {
  method bonoResultados(sueldoNeto) = sueldoNeto * 0.1  
}

object montoFijo {
  method bonoResultados() = 800 
}

object nulo {
  method bonoResultados() = 0
}

// BONOS POR PRESENTISMO

object normal {
  method bonoPresentismo(_faltas) =
    if (_faltas == 0) {
        2000
    }
    else if (_faltas == 1) {
        1000
    }
    else 0
}

object ajuste {
  method bonoPresentismo(_faltas) =
    if (_faltas == 0) {
        100
    }
    else 0
}

object demagogico {
  method bonoPresentismo(sueldoNeto) =
    if (sueldoNeto < 18000) {
        500
    }
    else 300
}

object nulo {
  method bonoPresentismo() = 0 
}

/*
object bonoResultados {
  method porcentaje(sueldoNeto) = sueldoNeto * 0.1

  method montoFijo() = 800

  method nulo() = 0   
}

object bonoPresentismo {
  method normal(_faltas) = 
    if (_faltas == 0) {
        2000
    }
    else if (_faltas == 1) {
        1000
    }
    else 0

  method ajuste(_faltas) = 
    if (_faltas == 0) {
        100
    }
    else 0

  method demagogico(sueldoNeto) =
    if (sueldoNeto < 18000) {
        500
    }
    else 300
}
*/