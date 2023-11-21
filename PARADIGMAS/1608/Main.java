import java.util.Scanner;

public class Main {

    static int[] getIngredientsPrices(int i, Scanner scanner) {
        int[] ingredientsPrices = new int[i];
        for (int ingredient = 0; ingredient < i; ingredient++)
            ingredientsPrices[ingredient] = scanner.nextInt();
        return ingredientsPrices;
    }

    static int getLowestPrice(int b, int[] ingredientsPrices, Scanner scanner) {
        int lowestPrice = 100 * 1000 * 1000;
        for (int cake = 0; cake < b; cake++) {
            int cakePrice = _getCakePrice(ingredientsPrices, scanner);
            if (cakePrice < lowestPrice)
                lowestPrice = cakePrice;
        }
        return lowestPrice;
    }

    static int _getCakePrice(int[] ingredientsPrices, Scanner scanner) {
        int price = 0;
        int qi = scanner.nextInt();
        for (int times = 0; times < qi; times++) {
            int ingredient = scanner.nextInt();
            int quantity = scanner.nextInt();
            price += ingredientsPrices[ingredient] * quantity;
        }
        return price;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int t = scanner.nextInt();
        for (int times = 0; times < t; times++) {
            int d = scanner.nextInt();
            int i = scanner.nextInt();
            int b = scanner.nextInt();
            int[] ingredientsPrices = getIngredientsPrices(i, scanner);
            int lowestPrice = getLowestPrice(b, ingredientsPrices, scanner);
            System.out.println(d / lowestPrice);
        }
        scanner.close();
    }
}
