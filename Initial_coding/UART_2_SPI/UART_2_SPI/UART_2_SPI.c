/*
 * UART_2_SPI.c
 *
 * Created: 12/09/2012 20:20:41
 *  Author: Ashley
 */ 

#include <avr/io.h>
#include <mega16.h>

/////Summary
/*
This MCU will talk to the comms module (via SPI)
and to the PC (via UART)

Alot of this code is taken from the datasheet
*/

#define FOSC 1843200 // Clock Speed, this comes from the crystal oscillator
#define BAUD 9600
#define MYUBRR FOSC/16/BAUD-1


//Bufer for USART
char buffer;

//All the registers in the tranciever
char status_reg[8];        //                                              
char rf_config_reg[10][8];  
char tx_payload[32][8];
char tx_address[4][8];
char rx_payload[32][8];
	
	
int main(void)
{
	DDRC = 0x07;//Setup for SPI
	
	char input_byte[8];
	
    while(1)
    {
		input_byte[0] = 1;
		input_byte[1] = 1;
		input_byte[2] = 0;
		input_byte[3] = 0;
		input_byte[4] = 1;
		input_byte[5] = 0;
		input_byte[6] = 0;
		input_byte[7] = 1;
		Start_SPI(input_byte);
    }
}




/////////////////////////////////////////////////////////////////////////////////////SPI CODE
/*
This is specific for the transceiver module

Connected to PORTC...
PC0 = CSN
PC1 = SCK
PC2 = MOSI
PC3 = MISO
*/


/*
This takes the command in for further register read/writes
and returns the status register 
WARNING: The SPI protocol is not finished by this function it must be proceeded by a clean up
*/
void Start_SPI(char command[8])
{
	int i;
	char in_buffer;
	char out_buffer;
	
	//Reset
	PORTC = 0x01;
    //CSN high to low
	PORTC = (0 << PC0);
	//Clock in the command and out the status
	for(i=0;i < 8;i++)
	{
		//Setup MOSI
		PORTC = command[i];
		//Rising clock edge
		PORTC = (1 << PC1);
		//Read in MISO
		command[i] = PINC3;
		//Falling clock edge
		PORTC = (0 << PC1);
	}
	
	return in_buffer;
}



////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////USART CODE
void USART_Init( unsigned int ubrr)
{
	/*Set baud rate */
	UBRR0H = (unsigned char)(ubrr>>8);
	UBRR0L = (unsigned char)ubrr;
	/*Enable receiver and transmitter */
	UCSR0B = (1<<RXEN0)|(1<<TXEN0);
	/* Set frame format: 8data, 2stop bit */
	UCSR0C = (1<<USBS0)|(3<<UCSZ00);
}

void USART_Transmit( unsigned char data )
{
	/* Wait for empty transmit buffer */
	while ( !( UCSR0A & (1<<UDRE0)) )
	;
	/* Put data into buffer, sends the data */
	UDR0 = data;
}

unsigned char USART_Receive( void )
{
	/* Wait for data to be received */
	while ( !(UCSR0A & (1<<RXC0)) )
	;
	/* Get and return received data from buffer */
	return UDR0;
}
///////////////////////////////////////////////////////////////////////////////////////


/////////////////////////////////////////////////////////////////////////////BIT BANGING
void set_PORTC_bit(int position, int value)
{   
	if (value == 0)
    {
        PORTC &= ~(1 << position);      // Set bit # 'position' low
    }
    else
    {
        PORTC |= (1 << position);       // Set bit # 'position' high
    }
}

int read_PORTC_bit(int position)
{   
	if (value == 0)
    {
        PORTC &= ~(1 << position);      // Set bit # 'position' low
    }
    else
    {
        PORTC |= (1 << position);       // Set bit # 'position' high
    }
}