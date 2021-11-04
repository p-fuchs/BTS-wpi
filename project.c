#include <stdio.h>

int main (void){
    int n = 0;
    scanf("%i", &n);
    int a = 1;
    for(int i=0 ; i<n ; i++){
        scanf("%i", &a);
        printf("%i\n", 2*a);
    }
    
    return 0;
}