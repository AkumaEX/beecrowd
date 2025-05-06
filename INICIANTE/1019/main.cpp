#include <iostream>
using namespace std;

int main() {
    int n;
    cin >> n;
    int hours = n / 3600;
    n = n % 3600;
    int minutes = n / 60;
    int seconds = n % 60;
    cout << hours << ":" << minutes << ":" << seconds << endl;
    return 0;
}
