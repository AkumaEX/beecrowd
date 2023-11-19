import java.util.Scanner;

public class Main {

    static double[] getCoordinates(double x1Before, double y1Before, double x1After, double y1After, double x2Before, double y2Before, double x2After, double y2After) {
        double[] line1Params = _getParams(x1Before, y1Before, x1After, y1After);
        double xm1 = line1Params[0];
        double ym1 = line1Params[1];
        double m1 = line1Params[2];
        
        double[] line2Params = _getParams(x2Before, y2Before, x2After, y2After);
        double xm2 = line2Params[0];
        double ym2 = line2Params[1];
        double m2 = line2Params[2];
        
        if (m1 == 0)
            return new double[] { xm1, ym2 + m2 * (xm1 - xm2) };
        if (m2 == 0)
            return new double[] { xm2, ym1 + m1 * (xm2 - xm1) };
        double x = (m1 * xm1 - ym1 - m2 * xm2 + ym2) / (m1 - m2);
        double y = ym1 + m1 * (x - xm1);
        return new double[] { x, y };
    }

    static double[] _getParams(double xBefore, double yBefore, double xAfter, double yAfter) {
        double xm = (xBefore + xAfter) / 2;
        double ym = (yBefore + yAfter) / 2;
        double m = (yBefore != yAfter) ? -(xBefore - xAfter) / (yBefore - yAfter) : 0;
        return new double[] { xm, ym, m };
    }

    static void printFormatted(int c, double[] coordinates) {
        System.out.printf("Caso #%d: %.2f %.2f\n", c, coordinates[0], coordinates[1]);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int t = scanner.nextInt();
        for (int c = 1; c <= t; c++) {
            double x1Before = scanner.nextDouble();
            double y1Before = scanner.nextDouble();
            double x2Before = scanner.nextDouble();
            double y2Before = scanner.nextDouble();
            double x1After = scanner.nextDouble();
            double y1After = scanner.nextDouble();
            double x2After = scanner.nextDouble();
            double y2After = scanner.nextDouble();
            double[] coordinates = getCoordinates(x1Before, y1Before, x1After, y1After, x2Before, y2Before, x2After,
                    y2After);
            printFormatted(c, coordinates);
        }
        scanner.close();
    }
}
