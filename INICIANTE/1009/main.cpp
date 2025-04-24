#include <iomanip>
#include <iostream>
using namespace std;

int main() {
    string name;
    double salary, sales, total;
    cin >> name;
    cin >> salary;
    cin >> sales;
    total = salary + sales * 0.15;
    cout << "TOTAL = R$ " << fixed << setprecision(2) << total << endl;
    return 0;
}
