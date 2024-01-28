import java.util.Scanner;

public class Main {
    static void printInterval(double value) {
        if (value < 0 || value > 100)
            System.out.println("Fora de intervalo");
        else if (value > 75)
            System.out.println("Intervalo (75,100]");
        else if (value > 50)
            System.out.println("Intervalo (50,75]");
        else if (value > 25)
            System.out.println("Intervalo (25,50]");
        else
            System.out.println("Intervalo [0,25]");
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double value = scanner.nextDouble();
        printInterval(value);
        scanner.close();
    }
}
