object pepe {
	var property categoria           = cadete
  var property faltas              = 0
  var property bonoResultadosPepe  = resultadosPorcentaje
  var property bonoPresentismoPepe = presentismoNormal
  
  // pepe

  method faltar() {
      faltas = faltas + 1
  }
  
  method sueldoNeto() = categoria.sueldoNeto()

  method bonoResultadosPepe() = bonoResultadosPepe.valor(self) 
  
  method bonoPresentismoPepe() = bonoPresentismoPepe.valor(self) 

  method sueldo() = self.sueldoNeto() + self.bonoResultadosPepe() + self.bonoPresentismoPepe()
}

// CATEGORIAS

object gerente {
  method sueldoNeto() = 15000 
}

object cadete {
  method sueldoNeto() = 20000
}

// BONOS POR RESULTADOS

object resultadosPorcentaje {
  method valor(empleado) = empleado.sueldoNeto() * 0.1  
}

object resultadosMontoFijo {
  method valor(empleado) = 800 
}

object resultadosNulo {
  method valor(empleado) = 0
}

// BONOS POR PRESENTISMO

object presentismoNormal {
  method valor(empleado) = (2000 - 1000 * empleado.faltas()).max(0)
}

object presentismoAjuste {
  method valor(empleado) =
    if (empleado.faltas() == 0) {
        100
    }
    else 0
}

object presentismoDemagogico {
  method valor(empleado) =
    if (empleado.sueldoNeto() < 18000) {
        500
    }
    else 300
}

object presentismoNulo {
  method valor(empleado) = 0 
}