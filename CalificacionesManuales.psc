Proceso CalificacionesManuales
    // Declaraci�n de variables
    Definir n, i, reprobatorias Como Entero
    Definir calificacion, suma, promedio, max, min Como Real
    reprobatorias <- 0
    suma <- 0
	
    // Pedir n�mero de calificaciones
    Escribir "�Cu�ntas calificaciones desea ingresar?"
    Leer n
	
    // Crear arreglo para las calificaciones
    Dimension calificaciones[n]
	
    // Ingresar calificaciones
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese la calificaci�n ", i, ":"
        Leer calificacion
        calificaciones[i] <- calificacion
        suma <- suma + calificacion
		
        // Inicializar m�ximo y m�nimo con la primera calificaci�n
        Si i = 1 Entonces
            max <- calificacion
            min <- calificacion
        FinSi
		
        // Determinar m�ximo
        Si calificacion > max Entonces
            max <- calificacion
        FinSi
		
        // Determinar m�nimo
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
	
    // Mostrar estad�sticas
    Escribir "Promedio: ", promedio
    Escribir "Calificaci�n m�xima: ", max
    Escribir "Calificaci�n m�nima: ", min
	
    // Mostrar reprobatorias
    Escribir "Calificaciones reprobatorias (<7):"
    Para i <- 1 Hasta n Hacer
        Si calificaciones[i] < 7 Entonces
            Escribir calificaciones[i]
            reprobatorias <- reprobatorias + 1
        FinSi
    FinPara
	
    Escribir "N�mero de calificaciones reprobatorias: ", reprobatorias
	
FinProceso
