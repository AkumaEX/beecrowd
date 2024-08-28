import java.util.Scanner;
import java.util.stream.Stream;

public class Main {

    static boolean isValid(String _cpf) {
        int[] cpf = Stream.of(_cpf.replaceAll("[.-]", "").split("")).mapToInt(Integer::parseInt).toArray();
        int b1 = (cpf[0] + cpf[1] * 2 + cpf[2] * 3 + cpf[3] * 4 + cpf[4] * 5 + cpf[5] * 6 + cpf[6] * 7 + cpf[7] * 8 + cpf[8] * 9) % 11 % 10;
        int b2 = (cpf[0] * 9 + cpf[1] * 8 + cpf[2] * 7 + cpf[3] * 6 + cpf[4] * 5 + cpf[5] * 4 + cpf[6] * 3 + cpf[7] * 2 + cpf[8]) % 11 % 10;
        return b1 == cpf[9] && b2 == cpf[10];
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            String cpf = scanner.next();
            System.out.println(isValid(cpf) ? "CPF valido" : "CPF invalido");
        }
        scanner.close();
    }
}
