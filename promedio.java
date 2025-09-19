public class promedio {
public static void main(String[] args) {
int calificaciones [] = {9,8,8,7,10,9,8,10,9};
int suma =0;
System.out.println("CALIFICACIONES: ");
for (int i : calificaciones) {
System.out.print(i + " | ");
}
for (int i=0; i<calificaciones.length; i++){
suma += calificaciones[i];
}
int total= calificaciones.length;
System.out.println("\n"+"Total de calificaciones " + total);
float promedio=suma/total;
System.out.println("El promedio de las calificaciones es " +
promedio);
}
}