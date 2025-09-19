Proceso RegistroEstudiantes
		Definir estudiantes Como Cadena
		Definir buscado Como Cadena
		Definir encontrado Como Logico
		Dimension estudiantes[5]
		
		Escribir "=== REGISTRO DE ESTUDIANTES ==="
		
		// Capturar nombres
		Para i <- 1 Hasta 5 Con Paso 1 Hacer
			Escribir Sin Saltar "Ingresa el nombre del estudiante ", i, ": "
			Leer estudiantes[i]
		FinPara
		
		// Mostrar lista
		Escribir ""
		Escribir "Lista de estudiantes:"
		Para i <- 1 Hasta 5 Con Paso 1 Hacer
			Escribir "- ", estudiantes[i]
		FinPara
		
		// Buscar estudiante
		Escribir ""
		Escribir Sin Saltar "Ingresa el nombre a buscar: "
		Leer buscado
		
		encontrado <- Falso
		
		Para i <- 1 Hasta 5 Con Paso 1 Hacer
			Si Mayusculas(estudiantes[i]) = Mayusculas(buscado) Entonces
				encontrado <- Verdadero
			FinSi
		FinPara
		
		// Mostrar resultado
		Si encontrado Entonces
			Escribir "El estudiante ", buscado, " está en la lista."
		SiNo
			Escribir "El estudiante ", buscado, " no fue encontrado."
		FinSi
		
FinProceso

