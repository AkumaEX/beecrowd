import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.nextInt() != 2002) {
            System.out.println("Senha Invalida");
        }
        System.out.println("Acesso Permitido");
        scanner.close();
    }
}
