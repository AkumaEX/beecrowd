#include<stdio.h>
#include<math.h>

int numPlates(int c, int d) {
    return c > 0 || d > 0 ? pow(26, c) * pow(10, d) : 0;
}

int main(){
    int t, c, d;
    scanf("%d", &t);
    while(t-- > 0) {
        scanf("%d %d", &c, &d);
        printf("%d\n", numPlates(c, d));
    }
    return 0;
}
