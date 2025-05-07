#include <iomanip>
#include <iostream>
using namespace std;

int main() {
    double raio;
    cin >> raio;
    double area = raio * raio * 3.14159;
    cout << "A=" << fixed << setprecision(4) << area << endl;
    return 0;
}
