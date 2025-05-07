#include <iomanip>
#include <iostream>
using namespace std;

int main() {
    double a, b, c;
    cin >> a;
    cin >> b;
    cin >> c;
    double media = (a * 2 + b * 3 + c * 5) / 10;
    cout << "MEDIA = " << fixed << setprecision(1) << media << endl;
    return 0;
}
