import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Scanner;

public class Main {

    static ArrayList<HashSet<String>> getServers(int m, Scanner scanner) {
        ArrayList<HashSet<String>> servers = new ArrayList<HashSet<String>>();
        for (int times = 0; times < m; times++) {
            HashSet<String> server = new HashSet<String>();
            int q = scanner.nextInt();
            for (int i = 0; i < q; i++)
                server.add(scanner.next());
            servers.add(server);
        }
        return servers;
    }

    static int getConnections(int n, ArrayList<HashSet<String>> servers, Scanner scanner) {
        int connections = 0;
        for (int times = 0; times < n; times++) {
            HashSet<String> client = new HashSet<String>();
            int p = scanner.nextInt();
            for (int j = 0; j < p; j++)
                client.add(scanner.next());
            for (HashSet<String> server : servers)
                if (!Collections.disjoint(client, server))
                    connections++;
        }
        return connections;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int m = scanner.nextInt();
        int n = scanner.nextInt();
        while (m > 0 && n > 0) {
            ArrayList<HashSet<String>> servers = getServers(m, scanner);
            int connections = getConnections(n, servers, scanner);
            System.out.println(connections);
            m = scanner.nextInt();
            n = scanner.nextInt();
        }
        scanner.close();
    }
}
