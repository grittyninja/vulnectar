#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
    setuid(0);setgid(0);
    system("/usr/bin/env echo I am $(whoami)");
    return 0;
}
