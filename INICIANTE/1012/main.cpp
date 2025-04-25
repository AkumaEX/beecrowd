#include <iomanip>
#include <iostream>
using namespace std;

int main() {
    double a, b, c;
    cin >> a;
    cin >> b;
    cin >> c;

    cout << "TRIANGULO: " << fixed << setprecision(3) << a * c / 2 << endl;
    cout << "CIRCULO: " << fixed << setprecision(3) << 3.14159 * c * c << endl;
    cout << "TRAPEZIO: " << fixed << setprecision(3) << (a + b) * c / 2 << endl;
    cout << "QUADRADO: " << fixed << setprecision(3) << b * b << endl;
    cout << "RETANGULO: " << fixed << setprecision(3) << a * b << endl;
    return 0;
}
