import java.util.Scanner;

public class Main {

    static double elapsed(int s, int va, int vb) {
        return (double) s / (va - vb);
    }

    static void formattedPrint(double time) {
        System.out.printf(time < 0 ? "impossivel\n" : "%.2f\n", time);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int s = scanner.nextInt();
            int va = scanner.nextInt();
            int vb = scanner.nextInt();
            formattedPrint(elapsed(s, va, vb));
        }
        scanner.close();
    }
}
