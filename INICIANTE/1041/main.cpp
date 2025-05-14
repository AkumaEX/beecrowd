#include <iostream>
using namespace std;

string quadrant(float x, float y) {
    if (x == 0 && y == 0) return "Origem";
    if (x == 0) return "Eixo Y";
    if (y == 0) return "Eixo X";
    if (x > 0) return y > 0 ? "Q1" : "Q4";
    return y > 0 ? "Q2" : "Q3";
}

int main() {
    float x, y;
    cin >> x >> y;
    cout << quadrant(x, y) << endl;
    return 0;
}
