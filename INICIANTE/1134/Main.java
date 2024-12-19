import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int gasoline = 0;
        int ethanol = 0;
        int diesel = 0;

        while (true) {
            int fuel = scanner.nextInt();
            if (fuel == 1)
                ethanol++;
            else if (fuel == 2)
                gasoline++;
            else if (fuel == 3)
                diesel++;
            else if (fuel == 4)
                break;
        }

        System.out.println("MUITO OBRIGADO");
        System.out.println("Alcool: " + ethanol);
        System.out.println("Gasolina: " + gasoline);
        System.out.println("Diesel: " + diesel);
        scanner.close();
    }
}
