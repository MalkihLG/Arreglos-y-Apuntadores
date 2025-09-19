Proceso promedio
    Dimension calificaciones[9]
    Definir i, total Como Entero
    Definir suma, promedio_valor Como Real
	
    calificaciones[1] <- 9
    calificaciones[2] <- 8
    calificaciones[3] <- 8
    calificaciones[4] <- 7
    calificaciones[5] <- 10
    calificaciones[6] <- 9
    calificaciones[7] <- 8
    calificaciones[8] <- 10
    calificaciones[9] <- 9
	
    suma <- 0
	
    Escribir "CALIFICACIONES: "
	
    Para i <- 1 Hasta 9 Hacer
        Escribir Sin Saltar calificaciones[i], " | "
    FinPara
	
    Para i <- 1 Hasta 9 Hacer
        suma <- suma + calificaciones[i]
    FinPara
	
    total <- 9
    promedio_valor <- suma / total
	
    Escribir ""
    Escribir "Total de calificaciones ", total
    Escribir "El promedio de las calificaciones es ", promedio_valor
	
FinProceso

