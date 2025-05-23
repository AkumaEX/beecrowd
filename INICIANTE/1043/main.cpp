#include <iomanip>
#include <iostream>
using namespace std;

int main() {
    float a, b, c;
    cin >> a >> b >> c;
    bool isTriangle = a + b > c && a + c > b && b + c > a;
    if (isTriangle)
        cout << "Perimetro = " << fixed << setprecision(1) << a + b + c << endl;
    else
        cout << "Area = " << fixed << setprecision(1) << (a + b) * c / 2 << endl;
    return 0;
}