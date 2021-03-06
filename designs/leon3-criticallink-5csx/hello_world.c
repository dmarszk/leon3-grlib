#include <stdio.h>
#include <stdint.h>
#include "config.h"


#define APB_UART0_BASE (0x80000100)

#define APB_UART0_DATA (APB_UART0_BASE + 0x0)
#define APB_UART0_STATUS (APB_UART0_BASE + 0x4)
#define APB_UART0_CTRL (APB_UART0_BASE + 0x8)
#define APB_UART0_SCALER (APB_UART0_BASE + 0xC)
#define APB_UART0_FIFO_DBG (APB_UART0_BASE + 0x10)

#define MHZ (1000000LL)
#define SRC_CLK (150 * MHZ)

#define MAIN_CLOCK (SRC_CLK*CONFIG_CLK_MUL/CONFIG_CLK_DIV)
#define UART0_BAUD_RATE (115200)
#define UART0_SCALER_VALUE ((MAIN_CLOCK + UART0_BAUD_RATE * 4) / (UART0_BAUD_RATE * 8))

void delay_loop(int n)
{
  int i;
  for(i = 0; i < n; ++i)
    __asm("nop");
}

int main(void)
{
  int i;
  *(uint32_t*)(APB_UART0_SCALER) = UART0_SCALER_VALUE;
  *(uint32_t*)(APB_UART0_CTRL) = 0x80000003; // Enable FIFO, TX and RX
  while(1)
  for(i = 0; i < 10; ++i)
  {
    printf("Hello World %d\n", i);
    delay_loop(50000);
  }
  return 0;
}
