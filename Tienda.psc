Proceso  Tienda
		// Declarar arreglos
		Definir productos Como Cadena
		Definir precios Como Real
		Definir cantidades Como Entero
		
		Dimension productos[5]
		Dimension precios[5]
		Dimension cantidades[5]
		
		// Inicializar productos y precios
		productos[1] <- "Pan"
		productos[2] <- "Leche"
		productos[3] <- "Huevos"
		productos[4] <- "Cereal"
		productos[5] <- "Jugo"
		
		precios[1] <- 15.5
		precios[2] <- 22.0
		precios[3] <- 40.0
		precios[4] <- 55.5
		precios[5] <- 30.0
		
		Escribir "=== TIENDA ==="
		
		// Mostrar productos y precios
		Para i <- 1 Hasta 5 Con Paso 1 Hacer
			Escribir i, ". ", productos[i], " - $", precios[i]
		FinPara
		
		// Pedir cantidades al usuario
		Escribir ""
		Escribir "Ingresa las cantidades deseadas:"
		Para i <- 1 Hasta 5 Con Paso 1 Hacer
			Escribir Sin Saltar productos[i], ": "
			Leer cantidades[i]
		FinPara
		
		// Calcular total
		total <- 0
		Escribir ""
		Escribir "=== DETALLE DE COMPRA ==="
		Para i <- 1 Hasta 5 Con Paso 1 Hacer
			subtotal <- precios[i] * cantidades[i]
			total <- total + subtotal
			Escribir productos[i], " x ", cantidades[i], " = $", subtotal
		FinPara
		
		Escribir ""
		Escribir "Total a pagar: $", total
FinProceso
