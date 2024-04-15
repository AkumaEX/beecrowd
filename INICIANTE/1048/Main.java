import java.util.Locale;
import java.util.Scanner;

public class Main {

    static double readjustmentRate(double salary) {
        if (salary > 2000)
            return 0.04;
        if (salary > 1200)
            return 0.07;
        if (salary > 800)
            return 0.10;
        if (salary > 400)
            return 0.12;
        return 0.15;
    }

    static void formattedPrint(double newSalary, double moneyEarned, double percentage) {
        System.out.printf("Novo salario: %.2f\n", newSalary);
        System.out.printf("Reajuste ganho: %.2f\n", moneyEarned);
        System.out.printf("Em percentual: %.0f %%\n", percentage * 100);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        double salary = scanner.nextFloat();
        double percentage = readjustmentRate(salary);
        double moneyEarned = salary * percentage;
        double newSalary = salary + moneyEarned;
        formattedPrint(newSalary, moneyEarned, percentage);
        scanner.close();
    }
}
