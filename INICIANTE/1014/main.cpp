#include <iomanip>
#include <iostream>
using namespace std;

int main() {
    int x;
    double y;
    cin >> x >> y;
    cout << fixed << setprecision(3) << x / y << " km/l" << endl;
    return 0;
}
