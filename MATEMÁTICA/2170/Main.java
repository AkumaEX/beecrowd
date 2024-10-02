import java.util.Scanner;

public class Main {

    static double interestRate(double x, double y) {
        return 100 * (y - x) / x;
    }

    static void formattedPrint(int project, double rate) {
        System.out.printf("Projeto %d:\n", project + 1);
        System.out.printf("Percentual dos juros da aplicacao: %.2f %%\n\n", rate);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int project = 0;
        while (scanner.hasNext()) {
            double x = scanner.nextDouble();
            double y = scanner.nextDouble();
            double rate = interestRate(x, y);
            formattedPrint(project++, rate);
        }
        scanner.close();
    }
}
