object pepe {
	var categoria = gerente
    var faltas = 0

    method categoria(_categoria) {
        categoria = _categoria
    }

    method faltar() {
        faltas = faltas + 1
    }

    method calcularSueldo(resultados, presentismo) = categoria.sueldoNeto() + 
}

object gerente {
  method sueldoNeto() = 15000 
}

object cadete {
  method sueldoNeto() = 20000
}

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