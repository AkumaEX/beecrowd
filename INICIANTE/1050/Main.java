import java.util.Map;
import java.util.Scanner;

public class Main {

    static String city(int ddd) {
        Map<Integer, String> cities = Map.of(61, "Brasilia", 71, "Salvador", 11, "Sao Paulo", 21, "Rio de Janeiro", 32,
                "Juiz de Fora", 19, "Campinas", 27, "Vitoria", 31, "Belo Horizonte");
        return cities.getOrDefault(ddd, "DDD nao cadastrado");
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int ddd = scanner.nextInt();
        System.out.println(city(ddd));
        scanner.close();
    }
}
