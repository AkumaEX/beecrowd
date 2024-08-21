import java.util.ArrayList;
import java.util.Comparator;
import java.util.Scanner;

public class Main {

    static ArrayList<Object[]> getStudents(int q, Scanner scanner) {
        ArrayList<Object[]> students = new ArrayList<Object[]>();
        while (q-- > 0) {
            Object[] student = new Object[3];
            student[0] = scanner.next();
            student[1] = scanner.next();
            student[2] = scanner.nextInt();
            students.add(student);
        }
        return students;
    }

    static void formattedPrint(ArrayList<Object[]> students) {
        students.sort(Comparator.<Object[]>comparingInt(student -> (int) student[2]).thenComparing(student -> (String) student[1]).thenComparing(student -> (String) student[0]));
        for (Object[] student : students) {
            System.out.println(student[0]);
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int q = scanner.nextInt();
            ArrayList<Object[]> students = getStudents(q, scanner);
            formattedPrint(students);
        }
        scanner.close();
    }
}
