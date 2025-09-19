Proceso CalificacionesManuales
    // Declaración de variables
    Definir n, i, reprobatorias Como Entero
    Definir calificacion, suma, promedio, max, min Como Real
    reprobatorias <- 0
    suma <- 0
	
    // Pedir número de calificaciones
    Escribir "¿Cuántas calificaciones desea ingresar?"
    Leer n
	
    // Crear arreglo para las calificaciones
    Dimension calificaciones[n]
	
    // Ingresar calificaciones
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese la calificación ", i, ":"
        Leer calificacion
        calificaciones[i] <- calificacion
        suma <- suma + calificacion
		
        // Inicializar máximo y mínimo con la primera calificación
        Si i = 1 Entonces
            max <- calificacion
            min <- calificacion
        FinSi
		
        // Determinar máximo
        Si calificacion > max Entonces
            max <- calificacion
        FinSi
		
        // Determinar mínimo
        Si calificacion < min Entonces
            min <- calificacion
        FinSi
    FinPara
	
    // Calcular promedio
    promedio <- suma / n
	
    // Mostrar calificaciones
    Escribir "=== CALIFICACIONES ==="
    Para i <- 1 Hasta n Hacer
        Escribir calificaciones[i]
    FinPara
	
    // Mostrar estadísticas
    Escribir "Promedio: ", promedio
    Escribir "Calificación máxima: ", max
    Escribir "Calificación mínima: ", min
	
    // Mostrar reprobatorias
    Escribir "Calificaciones reprobatorias (<7):"
    Para i <- 1 Hasta n Hacer
        Si calificaciones[i] < 7 Entonces
            Escribir calificaciones[i]
            reprobatorias <- reprobatorias + 1
        FinSi
    FinPara
	
    Escribir "Número de calificaciones reprobatorias: ", reprobatorias
	
FinProceso
