#include <stdio.h>
#include <stdint.h>

extern uint64_t
magic_number(void);

int
main()
{
    printf("%lu", magic_number());
    return 0;
}
