#include <iostream>
using namespace std;

int main() {
    double value;
    cin >> value;
    if (value < 0 || value > 100)
        cout << "Fora de intervalo" << endl;
    else if (value > 75)
        cout << "Intervalo (75,100]" << endl;
    else if (value > 50)
        cout << "Intervalo (50,75]" << endl;
    else if (value > 25)
        cout << "Intervalo (25,50]" << endl;
    else
        cout << "Intervalo [0,25]" << endl;
    return 0;
}
