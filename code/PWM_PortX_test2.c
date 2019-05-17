/*
 * PWM.c
 *
 */
 
#define F_CPU   20000000
 
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
 
double dutyCycle1 = 0;
double dutyCycle2 = 0;
 
void startConversion();
void setupADC();
 
int main(void)
{   
    DDRD = (1 << PORTD6);
	DDRB = (1 << PORTB1);
     
    TCCR0A = (1 << COM0A1) | (1 << WGM00) | (1 << WGM01); //what more we are setting up and what we are going to do in that setup
	TCCR1A = (1 << COM1A1) | (1 << WGM12) | (1 << WGM10); 
	
    TIMSK0 = (1 << TOIE0);
	TIMSK1 = (1 << TOIE1); 
     
    //OCR0A = (dutyCycle/100)*255.0;
    OCR1A = (dutyCycle2/100)*255.0; 
	
	setupADC();
	 
    sei();
    
    TCCR0B = (1 << CS00) | (1 << CS02);
	TCCR1B = (1 << CS12) | (1 << CS10); 
     
    while(1)
    {
        //TODO:: Please write your application code
        _delay_ms(100);
         
        //dutyCycle1 = 50;
         
        dutyCycle2 = 50;                 
    }
}

void setupADC()
{
	ADMUX = (1 << REFS0) | (1 << MUX0) | (1 << MUX2);
	ADCSRA = (1 << ADEN) | (1 << ADIE) | (1 << ADPS0) | (1 << ADPS1) | (1 << ADPS2);
	DIDR0 = (1 << ADC5D);
	
	startConversion(); 
}

void startConversion()
{
	ADCSRA |= (1 << ADSC);
}
 
ISR(TIMER0_OVF_vect)
{
    OCR0A = dutyCycle1; 
}

ISR(TIMER1_OVF_vect)
{
	OCR1A = (dutyCycle2/100)*255.0;
}

ISR(ADC_vect)
{
	dutyCycle1 = ADC;
	startConversion(); 
}
