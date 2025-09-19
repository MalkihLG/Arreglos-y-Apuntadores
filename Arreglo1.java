import java.util.Scanner;

public class Arreglo1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int A[] = new int[5];
        
        System.out.println("Ejemplo de arreglos unidimensionales");
        System.out.println("Introduce N:");
        int N = sc.nextInt();

        for (int i = 0; i <= 4; i++) {
            System.out.println("Introduce el valor para la posicion " + i + ":");
            int valor = sc.nextInt();
            A[i] = valor;
        }

        System.out.println("Los valores del arreglo son:");
        for (int i = 0; i < 5; i++) {
            System.out.print(A[i] + " | ");
        }


        System.out.println("Utilizando length:");
        for (int i = 0; i < A.length; i++) {
            System.out.println(A[i]);
        }


        System.out.println("Utilizando foreach:");
        for (int valor : A) {
            System.out.print(valor + " ");
        }
    }
}