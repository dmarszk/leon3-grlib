#include <stdio.h>

#define APB_UART0_BASE (0x80000100)

#define APB_UART0_DATA (APB_UART0_BASE + 0x0)
#define APB_UART0_STATUS (APB_UART0_BASE + 0x4)
#define APB_UART0_CTRL (APB_UART0_BASE + 0x8)
#define APB_UART0_SCALER (APB_UART0_BASE + 0xC)
#define APB_UART0_FIFO_DBG (APB_UART0_BASE + 0x10)

#define MAIN_CLOCK (50000000)
#define UART0_BAUD_RATE (115200)
#define UART0_SCALER_VALUE ((MAIN_CLOCK + UART0_BAUD_RATE * 4) / (UART0_BAUD_RATE * 8))

int main()
{
	int i, j;
	*(unsigned long*)(APB_UART0_SCALER) = UART0_SCALER_VALUE;
	*(unsigned long*)(APB_UART0_CTRL) = 0x80000003; // Enable FIFO, TX and RX
	for(i = 0; i < 10; ++i)
	{
		printf("Hello World\n");
		for(j = 0; j < 100000; ++j)
			__asm("nop");
	}
	return 0;
}
