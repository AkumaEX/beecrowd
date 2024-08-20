int main(int argc, char const *argv[]) {
    for (int i = 1; i < 10; i += 2) {
        for (int j = 6; j > 3; j--) {
            printf("I=%d J=%d\n", i, i + j);
        }
    }
    return 0;
}
