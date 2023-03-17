// test_multiply.c
#include <stdio.h>
#include "multiply.h"

void test_multiply() {
    int a = 5;
    int b = 3;
    int expected_result = 15;
    int result = multiply(a, b);

    if (result == expected_result) {
        printf("Test multiply() PASSED\n");
    } else {
        printf("Test multiply() FAILED. Expected %d, but got %d\n", expected_result, result);
    }
}

int main() {
   return test_multiply();
    
}
