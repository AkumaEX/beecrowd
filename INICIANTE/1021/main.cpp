#include <cmath>
#include <iomanip>
#include <iostream>
using namespace std;

int main() {
    const double bill[]{100, 50, 20, 10, 5, 2};
    const double coin[]{1, 0.50, 0.25, 0.10, 0.05, 0.01};
    double n;
    cin >> n;
    n += 0.0001;
    cout << "NOTAS:" << endl;
    for (int i = 0; i < 6; i++) {
        cout << (int)(n / bill[i]) << " nota(s) de R$ " << fixed << setprecision(2) << bill[i] << endl;
        n = fmod(n, bill[i]);
    }
    cout << "MOEDAS:" << endl;
    for (int i = 0; i < 6; i++) {
        cout << (int)(n / coin[i]) << " moeda(s) de R$ " << fixed << setprecision(2) << coin[i] << endl;
        n = fmod(n, coin[i]);
    }
    return 0;
}
