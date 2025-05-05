#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n;
    cout << n << endl;
    for (int bill : {100, 50, 20, 10, 5, 2, 1}) {
        cout << n / bill << " nota(s) de R$ " << bill << ",00" << endl;
        n %= bill;
    }
    return 0;
}
