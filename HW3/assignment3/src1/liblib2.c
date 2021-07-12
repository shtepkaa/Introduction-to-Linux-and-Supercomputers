#include <stdio.h> 
#include <math.h>

int hello_func_of_minilib()
{
    printf("HELLO minilib1 \n");
    return 0;
}


double cos_func_of_minilib(double x)
{
    return cos(x + M_PI);
}
