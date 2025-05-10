#include <iomanip>
#include <iostream>
using namespace std;

int main() {
    double prices[]{0.0, 4.0, 4.5, 5.0, 2.0, 1.5};
    int code, quantity;
    cin >> code >> quantity;
    cout << "Total: R$ " << fixed << setprecision(2) << prices[code] * quantity << endl;
    return 0;
}
