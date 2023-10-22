import java.util.Arrays;
import java.util.Scanner;

public class Main {

    static String dinner(String diet, String breakfast, String lunch) {
        for (String food : (breakfast + lunch).split("")) {
            if (diet.contains(food))
                diet = diet.replace(food, "");
            else
                return "CHEATER";
        }
        if (diet.length() == 0) {
            return "";
        } else {
            char[] result = diet.toCharArray();
            Arrays.sort(result);
            return new String(result);
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        scanner.nextLine();
        for (int times = 0; times < n; times++) {
            String diet = scanner.nextLine();
            String breakfast = scanner.nextLine();
            String lunch = scanner.nextLine();
            System.out.println(dinner(diet, breakfast, lunch));
        }
        scanner.close();
    }
}
