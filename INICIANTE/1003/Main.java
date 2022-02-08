import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int A = scanner.nextInt();
        int B = scanner.nextInt();
        scanner.close();
        
        int SOMA = A + B;
        System.out.printf("SOMA = %d\n", SOMA);
    }
}