#include <stdio.h>
#include <stdlib.h>

int *getIngredientsPrices(int i) {
    int *ingredientsPrices = malloc(i * sizeof(int));
    for (int ingredient = 0; ingredient < i; ingredient++) {
        scanf("%d", &ingredientsPrices[ingredient]);
    }
    return ingredientsPrices;
}

int getLowestPrices(int b, int i, int *ingredientsPrices) {
    int lowestPrice = 100 * 1000 * 1000;
    for (int cake = 0; cake < b; cake++) {
        int cakePrice = _getCakePrice(i, ingredientsPrices);
        if (cakePrice < lowestPrice)
            lowestPrice = cakePrice;
    }
    return lowestPrice;
}

int _getCakePrice(int i, int *ingredientsPrices) {
    int price = 0;
    int qi, ingredient, quantity;
    scanf("%d", &qi);
    for (int times = 0; times < qi; times++) {
        scanf("%d %d", &ingredient, &quantity);
        price += ingredientsPrices[ingredient] * quantity;
    }
    return price;
}

int main() {
    int t, d, i, b, *ingredientsPrices, lowestPrice;
    scanf("%d", &t);
    for (int times = 0; times < t; times++) {
        scanf("%d %d %d", &d, &i, &b);
        ingredientsPrices = getIngredientsPrices(i);
        lowestPrice = getLowestPrices(b, i, ingredientsPrices);
        printf("%d\n", d / lowestPrice);
    }
    free(ingredientsPrices);
    return 0;
}
