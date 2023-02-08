
int a;

void _start(){
    int* x = (int*)(65536 + 65534);

    int p = *x;

    a = p;
}