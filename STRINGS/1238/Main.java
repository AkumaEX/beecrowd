import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int t = 0; t < n; t++) {
            String[] str_i = scanner.next().split("");
            String[] str_j = scanner.next().split("");
            String[] result = new String[str_i.length + str_j.length];
            int i = 0, j = 0, k = 0;
            while (i < str_i.length || j < str_j.length) {
                if (i < str_i.length)
                    result[k++] = str_i[i++];
                if (j < str_j.length)
                    result[k++] = str_j[j++];
            }
            System.out.println(String.join("", result));
        }
        scanner.close();
    }
}
