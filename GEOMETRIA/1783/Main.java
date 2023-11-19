import java.util.Scanner;
import java.util.Locale;
import java.awt.geom.Point2D;

public class Main {

    static Point2D getBlackHolePoint(Point2D s1Before, Point2D s1After, Point2D s2Before, Point2D s2After) {
        double x1 = (s1Before.getX() + s1After.getX()) / 2;
        double y1 = (s1Before.getY() + s1After.getY()) / 2;
        double m1 = (s1Before.getY() - s1After.getY()) / (s1Before.getX() - s1After.getX());

        double x2 = (s2Before.getX() + s2After.getX()) / 2;
        double y2 = (s2Before.getY() + s2After.getY()) / 2;
        double m2 = (s2Before.getY() - s2After.getY()) / (s2Before.getX() - s2After.getX());

        if (m1 == 0) {
            if (m2 == 0)
                return new Point2D.Double(x1, y2);
            return new Point2D.Double(x1, y2 - (x1 - x2) / m2);
        }

        double x = ((y2 - y1) * m1 * m2 + ((m1 * x2) - (m2 * x1))) / (m1 - m2);
        double y = y1 - (x - x1) / m1;
        return new Point2D.Double(x, y);
    }

    static void printFormatted(int c, Point2D point) {
        System.out.printf("Caso #%d: %.2f %.2f\n", c, point.getX(), point.getY());
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.US);
        int t = scanner.nextInt();
        for (int c = 1; c <= t; c++) {
            Point2D s1Before = new Point2D.Double(scanner.nextDouble(), scanner.nextDouble());
            Point2D s2Before = new Point2D.Double(scanner.nextDouble(), scanner.nextDouble());
            Point2D s1After = new Point2D.Double(scanner.nextDouble(), scanner.nextDouble());
            Point2D s2After = new Point2D.Double(scanner.nextDouble(), scanner.nextDouble());
            Point2D blackHole = getBlackHolePoint(s1Before, s1After, s2Before, s2After);
            printFormatted(c, blackHole);
        }
        scanner.close();
    }
}
