#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define IN "../data/simple.asm"

int main() {
    FILE* fp = fopen(IN, "r");
    if (!fp) {
        printf("Error: Could not open file\n");
        exit(1);
    }

    int c;
    while ((c = getc(fp)) != EOF) {
        printf("%c", c);
    }
    printf("\n");

    fclose(fp);
    return 0;
}
