#include <iomanip>
#include <iostream>
using namespace std;

int main() {
    float t, v;
    cin >> t;
    cin >> v;
    cout << fixed << setprecision(3) << v * t / 12 << endl;
    return 0;
}
