#include <iostream>
#include <iomanip>
using namespace std;

int main() {
    int number, hours;
    double wage;
    cin >> number >> hours >> wage;
    cout << "NUMBER = " << number << endl;
    cout << "SALARY = U$ " << fixed << setprecision(2) << hours * wage << endl;
    return 0;
}
