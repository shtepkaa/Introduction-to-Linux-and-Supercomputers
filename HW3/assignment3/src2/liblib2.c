#include <stdio.h> 
#include <math.h>

int hello_func_of_minilib()
{
    printf("GOOD BYE minilib2 \n");
    return 0;
}


double cos_func_of_minilib(double x)
{
    return -10.0 + cos(x + M_PI);
}
