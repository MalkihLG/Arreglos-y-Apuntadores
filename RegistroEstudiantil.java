import java.util.Scanner;

public class RegistroEstudiantil {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Declarar arreglos
        String[] nombres = new String[5];
        int[] edades = new int[5];
        double[] promedios = new double[5];

        System.out.println("=== REGISTRO DE ESTUDIANTES ===");

        // Leer datos de los estudiantes
        for (int i = 0; i < nombres.length; i++) {
            System.out.print("Ingresa el nombre del estudiante " + (i + 1) + ": ");
            nombres[i] = sc.nextLine();

            System.out.print("Ingresa la edad de " + nombres[i] + ": ");
            edades[i] = sc.nextInt();

            System.out.print("Ingresa el promedio de " + nombres[i] + ": ");
            promedios[i] = sc.nextDouble();
            sc.nextLine(); // Limpiar buffer
        }

        // Mostrar los datos en forma de tabla
        System.out.println("\n=== LISTA DE ESTUDIANTES ===");
        System.out.printf("%-10s | %-4s | %-7s%n", "Nombre", "Edad", "Promedio");
        System.out.println("-----------------------------");
        for (int i = 0; i < nombres.length; i++) {
            System.out.printf("%-10s | %-4d | %-7.2f%n", nombres[i], edades[i], promedios[i]);
        }

        // Buscar un estudiante
        System.out.print("\nIngresa el nombre a buscar: ");
        String buscado = sc.nextLine();
        boolean encontrado = false;

        for (int i = 0; i < nombres.length; i++) {
            if (nombres[i].equalsIgnoreCase(buscado)) {
                encontrado = true;
                System.out.println("Estudiante encontrado: " + nombres[i] + " | Edad: " + edades[i] + " | Promedio: " + promedios[i]);
                break;
            }
        }

        if (!encontrado) {
            System.out.println("El estudiante " + buscado + " no fue encontrado.");
        }

        sc.close();
    }
}
