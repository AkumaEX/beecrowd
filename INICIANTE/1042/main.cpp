#include <algorithm>
#include <array>
#include <iostream>
using namespace std;

void formattedPrint(array<int, 3> sequence) {
    for (int value : sequence)
        cout << value << endl;
}

int main() {
    array<int, 3> original;
    cin >> original[0] >> original[1] >> original[2];
    array<int, 3> sorted = original;
    sort(sorted.begin(), sorted.end());
    formattedPrint(sorted);
    cout << endl;
    formattedPrint(original);
}
