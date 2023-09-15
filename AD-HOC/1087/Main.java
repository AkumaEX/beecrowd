import java.util.Scanner;

public class Main {

    static boolean diagonalSearch(int x1, int y1, int x2, int y2, int h, int v) {
        if (x1 < 1 || x1 > 8 || y1 < 1 || y1 > 8)
            return false;
        if (x1 == x2 && y1 == y2)
            return true;
        return diagonalSearch(x1 + h, y1 + v, x2, y2, h, v);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int x1 = scanner.nextInt();
        int y1 = scanner.nextInt();
        int x2 = scanner.nextInt();
        int y2 = scanner.nextInt();
        while (x1 > 0) {
            if (x1 == x2 && y1 == y2)
                System.out.println(0);
            else if (x1 == x2 || y1 == y2 || diagonalSearch(x1, y1, x2, y2, -1, -1) || diagonalSearch(x1, y1, x2, y2, -1, 1) || diagonalSearch(x1, y1, x2, y2, 1, -1) || diagonalSearch(x1, y1, x2, y2, 1, 1)) 
                System.out.println(1);
            else
                System.out.println(2);
            
            x1 = scanner.nextInt();
            y1 = scanner.nextInt();
            x2 = scanner.nextInt();
            y2 = scanner.nextInt();
        }
        scanner.close();
    }
}
