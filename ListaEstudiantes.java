import java.util.Scanner;

public class ListaEstudiantes {
    public static void main(String[] args) { 
        Scanner sc = new Scanner(System.in);

        // Arreglos de ejemplo
        String[] nombres = {"ana", "Carlos", "maria", "Juan", "luisa"};
        double[] promedios = {8.5, 7.2, 6.7, 9.9, 8.1};
        int[] edades = {18, 19, 18, 20, 19};

        System.out.println("=== LISTADO DE ESTUDIANTES ===");

        // Recorrer los tres arreglos al mismo tiempo
        for (int i = 0; i < nombres.length; i++) {
            String nombre = nombres[i];

            // Contar caracteres del nombre
            int numCaracteres = nombre.length();

            // Convertir a mayúsculas si está en minúsculas, o a minúsculas si tiene mayúsculas
            if (nombre.equals(nombre.toLowerCase())) {
                nombre = nombre.toUpperCase();
            } else {
                nombre = nombre.toLowerCase();
            }

            // Actualizar el arreglo con el nombre modificado
            nombres[i] = nombre;

            // Mostrar información del estudiante
            System.out.println((i + 1) + ". Nombre: " + nombre);
            System.out.println("   Número de caracteres: " + numCaracteres);
            System.out.println("   Promedio: " + promedios[i]);
            System.out.println("   Edad: " + edades[i]);
            System.out.println();
        }

        sc.close();
    }
}
