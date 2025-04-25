#include <iostream>
using namespace std;

int maior(int a, int b) {
    return (a + b + abs(a - b)) / 2;
}

int main() {
    int a, b, c;
    cin >> a;
    cin >> b;
    cin >> c;
    cout << maior(maior(a, b), c) << " eh o maior" << endl;
    return 0;
}
