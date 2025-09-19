Proceso RegistroEstudiantil
		Definir nombres Como Cadena
		Definir edades Como Entero
		Definir promedios Como Real
		Definir buscado Como Cadena
		Definir encontrado Como Logico
		
		Dimension nombres[5]
		Dimension edades[5]
		Dimension promedios[5]
		
		Escribir "=== REGISTRO DE ESTUDIANTES ==="
		
		// Leer datos
		Para i <- 1 Hasta 5 Con Paso 1 Hacer
			Escribir Sin Saltar "Ingresa el nombre del estudiante ", i, ": "
			Leer nombres[i]
			
			Escribir Sin Saltar "Ingresa la edad de ", nombres[i], ": "
			Leer edades[i]
			
			Escribir Sin Saltar "Ingresa el promedio de ", nombres[i], ": "
			Leer promedios[i]
		FinPara
		
		// Mostrar en forma de tabla
		Escribir ""
		Escribir "=== LISTA DE ESTUDIANTES ==="
		Escribir "Nombre      | Edad | Promedio"
		Escribir "-----------------------------"
		
		Para i <- 1 Hasta 5 Con Paso 1 Hacer
			Escribir nombres[i], " | ", edades[i], " | ", promedios[i]
		FinPara
		
		// Buscar estudiante
		Escribir ""
		Escribir Sin Saltar "Ingresa el nombre a buscar: "
		Leer buscado
		
		encontrado <- Falso
		
		Para i <- 1 Hasta 5 Con Paso 1 Hacer
			Si Mayusculas(nombres[i]) = Mayusculas(buscado) Entonces
				encontrado <- Verdadero
				Escribir "Estudiante encontrado: ", nombres[i], " | Edad: ", edades[i], " | Promedio: ", promedios[i]
			FinSi
		FinPara
		
		Si No encontrado Entonces
			Escribir "El estudiante ", buscado, " no fue encontrado."
		FinSi
FinProceso

