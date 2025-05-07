#include <iomanip>
#include <iostream>
using namespace std;

int main() {
    string name;
    double salary, sales;
    cin >> name;
    cin >> salary;
    cin >> sales;
    cout << "TOTAL = R$ " << fixed << setprecision(2) << salary + sales * 0.15 << endl;
    return 0;
}
