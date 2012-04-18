#include <stdio.h>

void x(custom_t *e, void (*funcptr));
void x(custom_t *e, void (*funcptr)[]);
void x(custom_t *e, void (*funcptr)(int, int));
void x(custom_t *e, void (*funcptr)(int, int)[]);

