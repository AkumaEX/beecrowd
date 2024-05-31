import java.util.Scanner;

public class Main {

    static String sequence(int[] cards) {
        if (cards[0] < cards[1] && cards[1] < cards[2] && cards[2] < cards[3] && cards[3] < cards[4])
            return "C";
        if (cards[0] > cards[1] && cards[1] > cards[2] && cards[2] > cards[3] && cards[3] > cards[4])
            return "D";
        return "N";
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] cards = new int[5];
        for (int i = 0; i < 5; i++)
            cards[i] = scanner.nextInt();
        System.out.println(sequence(cards));
        scanner.close();
    }
}
