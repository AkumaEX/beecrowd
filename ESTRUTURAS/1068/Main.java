import java.util.LinkedList;
import java.util.Scanner;

public class Main {

    static boolean isCorrect(String expression) {
        LinkedList<Character> stack = new LinkedList<Character>();
        for (int i = 0; i < expression.length(); i++) {
            if (expression.charAt(i) == '(') {
                stack.add(expression.charAt(i));
            } else if (expression.charAt(i) == ')') {
                if (stack.isEmpty())
                    return false;
                stack.removeLast();
            }
        }
        return stack.isEmpty();
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            String expression = scanner.next();
            System.out.println(isCorrect(expression) ? "correct" : "incorrect");
        }
        scanner.close();
    }
}
