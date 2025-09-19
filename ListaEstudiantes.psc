Proceso  ListaEstudiantes
		
		Definir nombres Como Cadena
		Definir promedios, edades Como Real
		Dimension nombres[5]
		Dimension promedios[5]
		Dimension edades[5]
		
		// Iniciar valores
		nombres[1] <- "ana"
		nombres[2] <- "Carlos"
		nombres[3] <- "maria"
		nombres[4] <- "Juan"
		nombres[5] <- "luisa"
		
		promedios[1] <- 8.5
		promedios[2] <- 7.2
		promedios[3] <- 6.7
		promedios[4] <- 9.9
		promedios[5] <- 8.1
		
		edades[1] <- 18
		edades[2] <- 19
		edades[3] <- 18
		edades[4] <- 20
		edades[5] <- 19
		
		Escribir "=== LISTADO DE ESTUDIANTES ==="
		
		// Recorrer los tres arreglos
		Para i <- 1 Hasta 5 Con Paso 1 Hacer
			nombre <- nombres[i]
			
			// Contar caracteres
			numCaracteres <- Longitud(nombre)
			
			// Si está en minúsculas, pasar a mayúsculas, si no, a minúsculas
			Si nombre = Minusculas(nombre) Entonces
				nombre <- Mayusculas(nombre)
			SiNo
				nombre <- Minusculas(nombre)
			FinSi
			
			// Actualizar el arreglo
			nombres[i] <- nombre
			
			// Mostrar información del estudiante
			Escribir i, ". Nombre: ", nombre
			Escribir "   Número de caracteres: ", numCaracteres
			Escribir "   Promedio: ", promedios[i]
			Escribir "   Edad: ", edades[i]
			Escribir ""
		FinPara
FinProceso

