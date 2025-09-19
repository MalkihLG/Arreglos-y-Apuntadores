public class EstadisticasCalificaciones {
public static void main(String[] args) {
double [] calificaciones = {8.5, 7.0, 9.5, 6.0, 10, 8.5, 9.0, 7.5,
6.5, 8.8};
float suma = 0;
double max = calificaciones[0];
double min = calificaciones[0];
for (int i = 0; i < calificaciones.length; i++) {
suma += calificaciones[i];
if (calificaciones[i] > max) {
max = calificaciones[i];
}
if (calificaciones[i] < min) {
min = calificaciones[i];
}
}
float promedio = suma / calificaciones.length;
System.out.println("=== CALIFICACIONES ===");
for (double i : calificaciones) {
System.out.print(i + " ");
}
System.out.println("Promedio: " + promedio);
System.out.println("Calificación máxima: " + max);
System.out.println("Calificación mínima: " + min);
}
}