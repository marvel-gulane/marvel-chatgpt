#include <stdio.h>
int main(void){
    const* char address00 = '0x0000';
    const* char address0F = '0xFFFF';
    const* char codenameH = 'hardware trojan';
    printf("Memory address %s += %s activating : %s" % (address00, address0F, codenameH)); return 0;
}
