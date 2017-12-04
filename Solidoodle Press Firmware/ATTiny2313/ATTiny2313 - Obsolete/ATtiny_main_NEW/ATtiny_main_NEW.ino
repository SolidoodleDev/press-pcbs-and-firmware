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
#define PRINTING			4		// PD2
#define FAULT					5		// PD3
#define PAUSE_HALT		6		// PD4
#define BUTTON_PRESS	7		// PD5
#define RESET_AT90		8		// PD6
#define PAUSE_BUTTON	9		// PB0
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

/***** variables *****/
bool buttonState;
bool lastButtonState;
bool printState = false;
bool lastPrintState = false;
bool pauseHalt = false;
bool lastPauseHalt = false;
bool buttonHold;
int ledValue;
int printerMode;
int buttonTimer;
int blinkDelay = 0;
int brightness = 0;
int ledFade = 1;

/***** routines *****/
void AT90On() {
	digitalWrite(PAUSE_BUTTON, LOW);
	digitalWrite(RESET_AT90, HIGH);
}

void AT90Off() {
	digitalWrite(PAUSE_BUTTON, HIGH);
	delay(10);
	digitalWrite(RESET_AT90, LOW);
}

void vReg5On() {
	digitalWrite(U5_EN, LOW);
}

void vReg5Off() {
	digitalWrite(U5_EN, HIGH);
}

void vReg12On() {
	digitalWrite(U13_EN, LOW);
}

void vReg12Off() {
	digitalWrite(U13_EN, HIGH);
}

void setLedPwm(int ledPwmValue) {
	analogWrite(LED_PWM, 255 - (LED_PWM_MAX / 100) * ledPwmValue);
}

void blinkLed() {
	for (int i=0; i<3; i++){
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

void powerOn() {
	AT90On();
	setLedPwm(100);
	vReg5On();
	vReg12On();
	printerMode = 1;
}

void powerOff() {
	blinkLed();
	AT90Off();
	vReg5Off();
	vReg12Off();
	setLedPwm(0);
	printerMode = 0;
}

void setup() {
	
	pinMode(U13_EN, OUTPUT);
	pinMode(U5_EN, OUTPUT);
	pinMode(BUTTON_PRESS, INPUT);
	pinMode(LED_PWM, OUTPUT);
	pinMode(LED1, OUTPUT);
	pinMode(PAUSE_BUTTON, OUTPUT);
	pinMode(PRINTING, INPUT);
	
	digitalWrite(RESET_AT90, LOW);
	digitalWrite(LED1, LOW);
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
	if (buttonState) {
		if (!lastButtonState) {	// if button was just pressed
			buttonTimer = 0;	// start timer for possible button hold
			buttonHold = true;
		}
		else if (buttonHold) {
			buttonTimer++;
			if (buttonTimer > BUTTON_HOLD_TIME) {  
				buttonHold = false;
				if (printerMode == 0) {  // if off..
				  powerOn();  // ..turn on
				}
				else if (printerMode == 1) {  // if on..
				  powerOff();  // ..turn off
				}
				else if ( (printerMode == 2) || (printerMode == 3) ) {  // if printing or paused..
				  // TODO: cancel print, home
					printerMode = 1;
				}
			}
		}
	}
	
	if ( (!buttonState) && (lastButtonState) && (buttonTimer < BUTTON_HOLD_TIME) ) {
	  buttonHold = false;
		if (printerMode == 1) {
		  // TODO: home extruder
		}
		else if (printerMode == 2) {
		  // TODO: pause print
			printerMode = 3;
		}
	}
	
	/***** mode settings *****/
	if (printerMode == 2) {
		if (blinkDelay < BLINK_TIME) {
			setLedPwm(0);
		}
		else {
			setLedPwm(100);
		}
		if (blinkDelay == (BLINK_TIME * 2) ) {
			blinkDelay = 0;
		}
		else {
			blinkDelay++;
		}
	}
	else if (printerMode == 3) {
		setLedPwm(brightness);
		brightness += ledFade;
		if ( (brightness == 100) || (brightness == 0) ) {
			ledFade = -ledFade;
		}
	}

}