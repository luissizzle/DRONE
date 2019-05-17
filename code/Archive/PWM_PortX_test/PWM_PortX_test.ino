#define _DISABLE_ARDUINO_TIMER0_INTERRUPT_HANDLER_

#include <wiring.c>

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>

double dutyCycle1 = 0;
double dutyCycle2 = 0;
double dutyCycle3 = 0;
double dutyCycle4 = 0;
double dutyCycle5 = 0;
double dutyCycle6 = 0;

void setupADC();

void startConversion();

void setup()
{
  DDRD |= (1 << PORTD3) | (1 << PORTD5) | (1 << PORTD6); // 
  DDRB |= (1 << PORTB1) | (1 << PORTB2) | (1 << PORTB3); //
  
/*
  DDRD = (1 << PORTD3); // PWM PIN 3, OC2B // doesnt work at all
  DDRD = (1 << PORTD5); // PWM PIN 5, OC0B // very low signal, works but big peaks, not square wave
  DDRD = (1 << PORTD6); // PWM PIN 6, OC0A // works fine
  DDRB = (1 << PORTB1); // PWM PIN 9, OC1A // very low signal, works but big peaks, not square wave
  DDRB = (1 << PORTB2); // PWM PIN 10, OC1B // very low signal, works but big peaks, not square wave
  DDRB = (1 << PORTB3); // PWM PIN 11, OC2A // works fine
*/

 

  /*
   *  {COMxA1, COMxA0} , x = 0, 1, 2
   *       10 =  Clear OCxA on compare match, set OCxA at BOTTOM,
   *             (non-inverting mode).
   *
   */

  /*
   * {WGM02, WGM01, WGM00} , x = 0, 1, 2
   *      000 = Normal, Update OCRx immediately, TOV flag set on MAX
   *      001 = PWM, phase correct, Update OCRx at TOP, TOV flag set on BOTTOM
   *      011 = Fast PWM, Update OCRx at BOTTOM, TOV flag set on MAX
   */

   /*
   * {WGM12, WGM11, WGM10} , x = 0, 1, 2
   *      101 = Fast PWM, Update OCR1x at BOTTOM, TOV1 flag set on TOP
   */

  /*
   * {WGM2, WGM1, WGM0} , x = 0, 1, 2
   *      011 = Fast PWM, Update OCRx at BOTTOM, TOV1 flag set on MAX
   */

  TCCR0A = (1 << COM0A1) | (1 << COM0B1) | (1 << WGM01) | (1 << WGM00); // OCR0A, OCR0B
  TCCR1A = (1 << COM1A1) | (1 << COM1B1) | (1 << WGM12) | (1 << WGM10); // OCR1A, OCR1B
  TCCR2A =(1 << COM2A1) | (1 << COM2B1) | (1 << WGM21) | (1 << WGM20);   // OCR2A, OCR2B

    /*
        {COMxB1, COMxB0} ,  x =   0, 1, 2
              10 =  Clear OCxB on compare match, set OCxB at BOTTOM,
                    (non-inverting mode).

     */

  TIMSK0 = (1 << TOIE0); // OCR0A, OCR0B // Timer/Counter0 Overflow Interrupt Enable
  TIMSK1 = (1 << TOIE1); // OCR1A, OCR1B // Timer/Counter1 Overflow Interrupt Enable
  TIMSK2 = (1 << TOIE2); // OCR2A, OCR2B // Timer/Counter2 Overflow Interrupt Enable
  
  //OCR0A = dutyCycle1;
  //OCR1A = dutyCycle2;

  setupADC();

  sei();

  /*
   *  {CSx2,CSx1,CSx0}:  x = 0,1
   *                     001 = clk/1
   *                     010 = clk/8
   *                     011 = clk/64
   *                     100 = clk/256
   *                     101 = clk/1024
   */

  /*
   *  {CS22,CS21,CS20}:  001 = clk/1
   *                     010 = clk/8
   *                     011 = clk/32
   *                     100 = clk/64
   *                     101 = clk/128
   *                     110 = clk/256
   *                     111 = clk/1024
   */

  TCCR0B = (1 << CS01); // OCR0A, OCR0B
  TCCR1B = (1 << CS11); // OCR1A, OCR1B
  TCCR2B = (1 << CS21); // OCR2A, OCR2B 
  //TCCR0B = TCCR0B & B11111000 | B00000011; // for PWM frequency of 976.56 Hz
  //TCCR1B = TCCR1B & B11111000 | B00000010; // for PWM frequency of 3921.16 Hz

  while (1)
  {

  }
}

void startConversion()
{
  ADCSRA |= (1 << ADSC);
}

void setupADC() // ANALOG INPUT 5 (A5)
{
  ADMUX = (1 << REFS0) | (1 << MUX0) | (1 << MUX2);
  ADCSRA = (1 << ADEN) | (1 << ADIE) | (1 << ADPS0) | (1 << ADPS1) | (1 << ADPS2);
  DIDR0 = (1 << ADC5D);

  startConversion();
}


/*
  DDRD = (1 << PORTD3); // PWM PIN 3, OC2B // doesnt work at all
  DDRD = (1 << PORTD5); // PWM PIN 5, OC0B // very low signal, works but big peaks, not square wave
  DDRD = (1 << PORTD6); // PWM PIN 6, OC0A // works fine
  DDRB = (1 << PORTB1); // PWM PIN 9, OC1A // very low signal, works but big peaks, not square wave
  DDRB = (1 << PORTB2); // PWM PIN 10, OC1B // very low signal, works but big peaks, not square wave
  DDRB = (1 << PORTB3); // PWM PIN 11, OC2A // works fine
*/

 

ISR(TIMER0_OVF_vect)
{
  OCR0B = dutyCycle2;
  OCR0A = dutyCycle3;
}

ISR(TIMER1_OVF_vect)
{
  OCR1A = dutyCycle4;
  OCR1B = dutyCycle5;
}

ISR(TIMER2_OVF_vect)
{
  OCR2B = dutyCycle1;
  OCR2A = dutyCycle6;
}

ISR(ADC_vect)
{
  dutyCycle1 = ADC/4; // doesnt work at all
  dutyCycle2 = ADC/4; // very low signal, works but big peaks, not square wave
  dutyCycle3 = ADC/4; // works fine
  dutyCycle4 = ADC/4;
  dutyCycle5 = ADC/4;
  dutyCycle6 = ADC/4;
  startConversion();
}
