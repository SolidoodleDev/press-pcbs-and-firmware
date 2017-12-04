/**
Solidoodle Press
ATtiny2313 LED Button
Author: Ryan Dobbins
Last modified: 30 Oct 2014
*/

//#define UART_TXD1			0		// PD0
//#define UART_RXD1			1		// PD1
#define U13_EN				2		// PA1
#define U5_EN					3		// PA0
#define BUTTON_PRESS	7		// PD5
#define RESET_AT90		8		// PD6
#define LED_PWM				11	// PB2
#define LED1					12	// PB3
//#define LED2					13	// PB4
//#define SDA/MOSI_ATT	14	// PB5
//#define MISO/ATT			15	// PB6
//#define SCL/SCK_ATT		16	// PB7

#define LED_PWM_MAX						255		// 0-255
#define LED_PWM_FADE					1			// amount to change PWM value each loop for pulsing
#define LOOP_DELAY						10		// time in milliseconds
#define BUTTON_HOLD_TIME_MS		1000	// time in milliseconds for button press
#define BLINK_TIME_MS					200		// time in milliseconds for LEDs blinking

#define BUTTON_HOLD_TIME		BUTTON_HOLD_TIME_MS / LOOP_DELAY
#define BLINK_TIME					BLINK_TIME_MS / LOOP_DELAY


// main firmware communication pins
#define PRINTING		4		// PD2			// INPUT
#define HOMEXY			5		// PD3			// OUTPUT home x/y	FAULT
#define PAUSE_PRINT		6		// PD4			// OUTPUT pause print
#define PAUSE_BUTTON	9		// PB0


/***** variables *****/
bool buttonState;
bool lastButtonState;
bool printState = false;
bool lastPrintState = false;
bool pauseHalt = false;
bool lastPauseHalt = false;
bool buttonHold;
int ledValue;
int printerMode;		// 0: OFF 1: ON 2: GLOWING(PRINTING) 3: BLINKING(PAUSED)
int buttonTimer;
int blinkDelay = 0;
int brightness = 0;
int ledFade = 1;

/***** routines *****/
void AT90On() 
{
	digitalWrite(PAUSE_BUTTON, LOW);
	digitalWrite(RESET_AT90, HIGH);
}

void AT90Off() 
{
	digitalWrite(PAUSE_BUTTON, HIGH);
	delay(10);
	digitalWrite(RESET_AT90, LOW);
}

void vReg5On() 
{
	digitalWrite(U5_EN, LOW);
}

void vReg5Off() 
{
	digitalWrite(U5_EN, HIGH);
}

void vReg12On() 
{
	digitalWrite(U13_EN, LOW);
}

void vReg12Off() 
{
	digitalWrite(U13_EN, HIGH);
}

void setLedPwm(int ledPwmValue) 
{
	analogWrite(LED_PWM, 255 - (LED_PWM_MAX / 100) * ledPwmValue);
}

void blinkLed() 
{
	for (int i=0; i<3; i++)
	{
		setLedPwm(0);
		delay(BLINK_TIME_MS);
		setLedPwm(100);
		delay(BLINK_TIME_MS);
	}
}

/*
void resetPrinter() {
	vReg5Off();
	vReg12Off();
	AT90Off();
	blinkLed();
	//setup();
	AT90On();
	vReg5On();
	vReg12On();
	printerMode = 1;
}
*/

void powerOn() 
{
	AT90On();
	setLedPwm(100);
	vReg5On();
	vReg12On();
	printerMode = 1;
}

void powerOff() 
{
	blinkLed();
	AT90Off();
	vReg5Off();
	vReg12Off();
	setLedPwm(0);
	printerMode = 0;
}

void setup() 
{
	pinMode(BUTTON_PRESS, 	INPUT);			// press from led button
	
	
	pinMode(PRINTING, 		INPUT);			// printing from main firmware
	
	
	digitalWrite(HOMEXY, 		LOW);
	pinMode(HOMEXY,				OUTPUT);		// home x/y
	
	digitalWrite(PAUSE_PRINT, 	LOW);
	pinMode(PAUSE_PRINT, 		OUTPUT);
	
	pinMode(PAUSE_FAULT,	OUTPUT);
	
	pinMode(U13_EN, 		OUTPUT);
	pinMode(U5_EN, 			OUTPUT);
	pinMode(LED_PWM, 		OUTPUT);
	pinMode(LED1, 			OUTPUT);
	pinMode(PAUSE_BUTTON, 	OUTPUT);
	
	
	
	digitalWrite(RESET_AT90, 	LOW);
	digitalWrite(LED1, 			LOW);
	vReg5Off();
	vReg12Off();
	setLedPwm(0);
	
}

void loop() {

	delay(LOOP_DELAY);
	lastButtonState = buttonState;
	buttonState = digitalRead(BUTTON_PRESS);
	lastPrintState = printState;
	printState = digitalRead(PRINTING);
	lastPauseHalt = pauseHalt;
	pauseHalt = digitalRead(PAUSE_HALT);
	
	if ( (printState) && (!lastPrintState) ) {
	  printerMode = 3;
	}
	else if ( (!printState) && (lastPrintState) ) {
	  printerMode = 1;
	}
	
	if ( (pauseHalt) && (!lastPauseHalt) ) {
	  powerOff();
	}
	
	/***** poll button *****/	
	if (buttonState) 
	{
		if (!lastButtonState) 
		{	// if button was just pressed
			buttonTimer = 0;	// start timer for possible button hold
			buttonHold = true;
		}
		else if (buttonHold) 
		{
			buttonTimer++;
			
			
			// LONG PRESS
			if (buttonTimer > BUTTON_HOLD_TIME) 
			{  
				buttonHold = false;
				if (printerMode == 0) 			// off
				{  
					// if off..
					powerOn();  // ..turn on
				}
				else if (printerMode == 1) 		// on
				{  
					// if on..
					powerOff();  // ..turn off
				}
				else if ( (printerMode == 2) || (printerMode == 3) ) 	// glowing(printing) or bliking(paused)
				{  
					// if printing or paused..
					// TODO: cancel print, home
					setLedPwm(100);
					printerMode = 1;
				}
			}
		}
	}
	
	// QUICK PRESS
	if ( (!buttonState) && (lastButtonState) && (buttonTimer < BUTTON_HOLD_TIME) ) 
	{
		buttonHold = false;
		
		if (printerMode == 0)			// off
		{
			// do nothing
		}
		else if (printerMode == 1) 		// on
		{
			// TODO: home extruder
			digitalWrite(HOMEXY, HIGH);
		}
		else if (printerMode == 2) 		// glowing(printing)
		{
			// TODO: pause print
			printerMode = 3;
		}
		else if( (printerMode == 3)		// blinking(paused)
		{	
			// resume print
		}
	}
	
	/***** mode settings *****/
	if (printerMode == 2) {
		if (blinkDelay < BLINK_TIME) 
		{
			setLedPwm(0);
		}
		else 
		{
			setLedPwm(100);
		}
		
		if (blinkDelay == (BLINK_TIME * 2) ) 
		{
			blinkDelay = 0;
		}
		else 
		{
			blinkDelay++;
		}
	}
	else if (printerMode == 3) 
	{
		setLedPwm(brightness);
		brightness += ledFade;
		if ( (brightness == 100) || (brightness == 0) ) 
		{
			ledFade = -ledFade;
		}
	}

}