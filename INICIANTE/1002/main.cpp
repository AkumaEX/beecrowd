#include <iomanip>
#include <iostream>
using namespace std;

int main() {
    double area, raio, pi = 3.14159;
    cin >> raio;
    area = pi * raio * raio;
    cout << "A=" << fixed << setprecision(4) << area << endl;
    return 0;
}
