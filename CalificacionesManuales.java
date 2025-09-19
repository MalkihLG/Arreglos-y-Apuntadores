import java.util.Scanner;

public class CalificacionesManuales {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Pedir al usuario cuántas calificaciones ingresará
        System.out.print("¿Cuántas calificaciones desea ingresar? ");
        int n = sc.nextInt();

        double[] calificaciones = new double[n];
        float suma = 0;
        double max = Double.MIN_VALUE;
        double min = Double.MAX_VALUE;
        int reprobatorias = 0;

        System.out.println("Ingrese las calificaciones:");

        for (int i = 0; i < n; i++) {
            System.out.print("Calificación " + (i + 1) + ": ");
            calificaciones[i] = sc.nextDouble();
            suma += calificaciones[i];

            // Buscar calificación máxima
            if (calificaciones[i] > max) {
                max = calificaciones[i];
            }

            // Buscar calificación mínima
            if (calificaciones[i] < min) {
                min = calificaciones[i];
            }
        }

        System.out.println("=== CALIFICACIONES ===");
        for (double cal : calificaciones) {
            System.out.print(cal + " | ");
        }

        float promedio = suma / n;
        System.out.println("Promedio: " + promedio);
        System.out.println("Calificación máxima: " + max);
        System.out.println("Calificación mínima: " + min);

        // Mostrar calificaciones reprobatorias
        System.out.print("Calificaciones reprobatorias (<7): ");
        for (double cal : calificaciones) {
            if (cal < 7) {
                System.out.print(cal + " ");
                reprobatorias++;
            }
        }
        System.out.println("Número de calificaciones reprobatorias: " + reprobatorias);
    }
}
