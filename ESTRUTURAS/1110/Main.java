import java.util.LinkedList;
import java.util.Scanner;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class Main {

    static LinkedList<Integer> getCards(LinkedList<Integer> deck) {
        LinkedList<Integer> discarded = new LinkedList<Integer>();
        while (deck.size() > 1) {
            discarded.add(deck.removeFirst());
            deck.add(deck.removeFirst());
        }
        return discarded;
    }

    static void printFormatted(LinkedList<Integer> discarded, LinkedList<Integer> remaining) {
        System.out.println("Discarded cards: " + discarded.stream().map(String::valueOf).collect(Collectors.joining(", ")));
        System.out.println("Remaining card: " + remaining.getFirst());
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n;
        while ((n = scanner.nextInt()) > 0) {
            LinkedList<Integer> deck = new LinkedList<Integer>(IntStream.rangeClosed(1, n).boxed().toList());
            LinkedList<Integer> discarded = getCards(deck);
            printFormatted(discarded, deck);
        }
        scanner.close();
    }
}
