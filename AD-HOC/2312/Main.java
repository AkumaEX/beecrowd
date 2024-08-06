import java.util.ArrayList;
import java.util.Scanner;
import java.util.Comparator;

public class Main {
    static ArrayList<Object[]> getMedals() {
        ArrayList<Object[]> medals = new ArrayList<Object[]>();
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        while (n-- > 0) {
            Object[] country = new Object[4];
            country[0] = scanner.next();
            country[1] = scanner.nextInt();
            country[2] = scanner.nextInt();
            country[3] = scanner.nextInt();
            scanner.nextLine();
            medals.add(country);
        }
        scanner.close();
        return medals;
    }

    static void formattedPrint(ArrayList<Object[]> medals) {
        medals.sort(Comparator.<Object[]>comparingInt(country -> -(int) country[1])
                .thenComparingInt(country -> -(int) country[2]).thenComparingInt(country -> -(int) country[3])
                .thenComparing(country -> (String) country[0]));
        for (Object[] country : medals) {
            System.out.printf("%s %d %d %d\n", country[0], country[1], country[2], country[3]);
        }
    }

    public static void main(String[] args) {
        ArrayList<Object[]> medals = getMedals();
        formattedPrint(medals);
    }
}
