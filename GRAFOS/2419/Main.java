import java.util.Scanner;

public class Main {

    static int coastSize(int m, int n, Scanner scanner) {
        int size = 0;
        char map[][] = _getMap(m, n, scanner);
        for (int i = 0; i < m; i++)
            for (int j = 0; j < n; j++)
                if (_isCoast(map, i, j, m, n))
                    size++;
        return size;
    }

    static char[][] _getMap(int m, int n, Scanner scanner) {
        char map[][] = new char[m][n];
        for (int i = 0; i < m; i++)
            map[i] = scanner.next().toCharArray();
        return map;
    }

    static boolean _isCoast(char[][] map, int i, int j, int m, int n) {
        if (map[i][j] == '#') {
            if (i == 0 || i == m - 1 || j == 0 || j == n - 1)
                return true;
            if (map[i - 1][j] == '.' || map[i + 1][j] == '.' || map[i][j - 1] == '.' || map[i][j + 1] == '.')
                return true;
        }
        return false;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int m = scanner.nextInt();
        int n = scanner.nextInt();
        System.out.println(coastSize(m, n, scanner));
        scanner.close();
    }
}
