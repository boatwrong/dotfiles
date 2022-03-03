#include "mylib.h"
#include <stdio.h>

int main(int argc, char *argv[])
{
    if(argc > 0)
    {
        for(int i=1; i <= argc; i++)
        {
            poop(argv[i]);
        }
    }
    return 0;
}

