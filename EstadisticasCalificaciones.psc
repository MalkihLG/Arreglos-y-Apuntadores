Proceso EstadisticasCalificaciones
		Dimension calificaciones[10]
		Definir i Como Entero
		Definir suma, promedio Como Real
		Definir max, min Como Real
		
		calificaciones[1] <- 8.5
		calificaciones[2] <- 7.0
		calificaciones[3] <- 9.5
		calificaciones[4] <- 6.0
		calificaciones[5] <- 10
		calificaciones[6] <- 8.5
		calificaciones[7] <- 9.0
		calificaciones[8] <- 7.5
		calificaciones[9] <- 6.5
		calificaciones[10] <- 8.8
		
		suma <- 0
		max <- calificaciones[1]
		min <- calificaciones[1]
		
		Para i <- 1 Hasta 10 Hacer
			suma <- suma + calificaciones[i]
			Si calificaciones[i] > max Entonces
				max <- calificaciones[i]
			FinSi
			Si calificaciones[i] < min Entonces
				min <- calificaciones[i]
			FinSi
		FinPara
		
		promedio <- suma / 10
		
		Escribir "=== CALIFICACIONES ==="
		Para i <- 1 Hasta 10 Hacer
			Escribir Sin Saltar calificaciones[i], " | "
		FinPara
		
		Escribir ""
		Escribir "Promedio: ", promedio
		Escribir "Calificación máxima: ", max
		Escribir "Calificación mínima: ", min

	
FinProceso
