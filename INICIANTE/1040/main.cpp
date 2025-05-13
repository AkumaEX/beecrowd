#include <iomanip>
#include <iostream>
using namespace std;

int main() {
    float n1, n2, n3, n4;
    cin >> n1 >> n2 >> n3 >> n4;
    float finalGrade = (n1 * 2 + n2 * 3 + n3 * 4 + n4) / 10;
    cout << "Media: " << fixed << setprecision(1) << finalGrade << endl;
    if (finalGrade < 5.0) {
        cout << "Aluno reprovado." << endl;
    } else if (finalGrade > 7.0) {
        cout << "Aluno aprovado." << endl;
    } else {
        cout << "Aluno em exame." << endl;
        float retakeGrade;
        cin >> retakeGrade;
        cout << "Nota do exame: " << retakeGrade << endl;
        finalGrade = (finalGrade + retakeGrade) / 2;
        cout << (finalGrade < 5.0 ? "Aluno reprovado." : "Aluno aprovado.") << endl;
        cout << "Media final: " << fixed << setprecision(1) << finalGrade << endl;
    }
    return 0;
}
