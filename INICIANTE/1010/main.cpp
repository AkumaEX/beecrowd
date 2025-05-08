#include <iomanip>
#include <iostream>
using namespace std;
int main() {
    int code, quantity;
    double value, total = 0;
    for (int i = 0; i < 2; i++) {
        cin >> code >> quantity >> value;
        total += quantity * value;
    }
    cout << "VALOR A PAGAR: R$ " << fixed << setprecision(2) << total << endl;
    return 0;
}
