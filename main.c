#include <stdint.h>
#define SLEEP 0x900000
void main(void){
    uint32_t i;
    volatile uint32_t * const GPFSEL2 = (uint32_t *)0x20200008; // Peripheral Address of GPIO select registor '2'.
    volatile uint32_t * const GPSET0  = (uint32_t *)0x2020001C; // Peripheral Address of GPIO set registor '0'.
    volatile uint32_t * const GPCLR0  = (uint32_t *)0x20200028; // Peripheral Address of GPIO clear registor '0'.
	*GPFSEL2 = (*GPFSEL2 & ~(7)) | (1); // Selecting GPIO20
    while (1) {
		for (i = 0; i < SLEEP; i++) // Delay loop
        *GPSET0 = 1 << (20); // Setting GPIO20 as HIGH  
        for (i = 0; i < SLEEP; i++) // Delay loop
        *GPCLR0 = 1 << (20); // Setting GPIO20 as LOW
    }
}
