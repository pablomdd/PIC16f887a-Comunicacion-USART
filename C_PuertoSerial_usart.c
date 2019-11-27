#include <htc.h>
#include <pic.h>
#include <stdio.h>
#include <ctype.h>

#define RX_PIN TRISC7
#define TX_PIN TRISC6

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF); //Internal clock, Watchdog off, MCLR off, Code Unprotected

void msecbase(){
    //La siguiente l�nea fue la �nica que se cambi�. Antes estaba como OPTION. 
    //En el PIC16F887 se llama OPTION_REG.
	OPTION_REG = 0b00000001;		//Set prescaler to TMRO 1:4
	TMR0 = 0x07;					//Preset TMRO to overflow on 250 counts
	while(!T0IF);				//Stay until TMRO overflow flag equals 1
	T0IF = 0;					//Clear the TMR0 overflow flag
}

void pause( unsigned short msvalue ){
	for (unsigned short x=0; x<=msvalue; x++) msecbase();				//Jump to millisec delay routine
}
void putch(char); 
char getch(void); 

void gets_Serial(char *); 

unsigned char *pa=&PORTA; 
char input[17];
int  convint;  
int dir; 
int  atoi( const char * s );


//LCD CONFIG

#define LCD_RS RD7
#define LCD_RW RE1
#define LCD_EN RD6

#define LCD_DATA PORTD
#define LCD_STROBE()  ((LCD_EN=1),(LCD_EN=0))
char init_value=0x03;


//ADC PREP

unsigned short b0=0;
int nin=0x00;

unsigned char carac[5];
unsigned char carac2[3];

float	num=0;
float	num1=0.00488758553;
float   num3=0;

void lcd_write(unsigned char c)
{
	pause(1);
	LCD_DATA=((c >> 4) & 0x0F);
	LCD_STROBE();
	LCD_DATA=(c & 0x0F);
	LCD_STROBE();
}

void lcd_clear(void)
{
	LCD_RS=0;
	lcd_write(0x1);
	pause(2);
}

void lcd_puts(const char * s)
{
	LCD_RS=1;
	while(*s)
		lcd_write(*s++);
}

void lcd_putch(char c)
{
	LCD_RS=1;
	lcd_write(c);
}

void lcd_goto(unsigned char pos)
{
	LCD_RS=0;
	lcd_write(0x80+pos);
}

void main(){
    ANSEL=0x60; 
    ANSELH=0x00; 
   // INTCON=0x00; 
    TRISA = 0xFF;		//nible menos significativo de PORTA como entrada. 
	
    TRISB = 0x00;       //PORTB como salida (RE y RS)
	TRISC = 0x00;
    TRISD = 0x00;       //PORTD como salida (pines data de la LCD)
	TRISE = 0x03;

//ADC CONFIG    
	TRISE=0x03;
	ADCON1=0b00000000;
	PR2=0xFF;

	CCP1CON = 0xC0;
	CCP2CON = 0xC0;
	T2CKPS1 = 1;
	T2CKPS0 = 1;
	TMR2ON = 1;

//LCD VARS
	LCD_RS=0;
	LCD_EN=0;
	LCD_RW=0;
	
	pause(15);
	LCD_DATA=init_value;
	LCD_STROBE();
	pause(10);
	LCD_STROBE();
	pause(10);
	LCD_STROBE();
	pause(10);
	LCD_DATA=2;
	LCD_STROBE();

	lcd_write(0x28);
	lcd_write(0xC);
	lcd_clear();
	lcd_write(0x06);
	
	//Serial port config
    RX_PIN=1; 
    TX_PIN=0; 
    OSCCON=0x70; 
    SPBRG=12; //9600 BAUDIOS.Cambiar para otra cantidad. 
    RCSTA=0x90; //Recepción disponible (SREN=1), 8 Bits, SPEN=1 (Puerto serial habilitados). 
    TXSTA=0x20; //Baja velocidad, SYNC=0 modo asíncrono, TXEN=1, 8 bits.
    BAUDCTL=0x00; //Detector de Baudios deshabilitado, 8 bits, sin inversión, 
    pause(500); 
   

	 //PORTA=0x01;
    *pa=0xFF;


//OTHER VARS
	char char_recibido;
	char char_pwm;
	char buffer[15];

	int entrada = 0;

//pwm
CCPR1L 	= 0x80;
CCP1CON	= 0x0C;

TMR2ON	= 1;

  unsigned int pwm_1 = 0;


	//numeros
    unsigned char pos=0; 
    for(int i=48; i<58; i++){
            putch(i); 
            pause(20); 
    }
    putch(0x0D); 
    putch(0x0A); 
	//abecedario
    for(int i=97; i<123; i++){
        putch(i); 
        pause(20); 
    }
    putch(0x0D); 
    putch(0x0A); 
    //PORTA=0x00; 
    pause(1000); 


//	getString(&buffer, 10);
	
	gets_Serial(&buffer);
	
	while(1){
		int val;
		
		lcd_clear();
		//LECTURA DEL PWM
		ADCON0=0xD5;
		GO_DONE = 1;
		while (GO_DONE ==1);
		nin=(ADRESH<<2)|(ADRESL>>6);
		//CCPR1L=ADRESH;

		num = num1*nin;
		int num_f = 255;

		sprintf(buffer,"ADC es:%i  ", nin);
		
	//	Muestra en Terminal el valor le�do desde el PIC
		for (char x = 0; x<17; x++)
			{
			putch (buffer[x]);
			}
		pause(200);
	//	Retorno de Carro, Salto de l�nea en hex ASCII		
		putch(0x0D); 
	    putch(0x0A); 
		
		//Valor de PORTA
		
		//entrada = PORTA;
		sprintf(buffer,"PORTA es:%d ", PORTA);
		
	//	Muestra en Terminal el valor le�do desde el PIC
		for (char x = 0; x<12; x++)
			{
			putch (buffer[x]);
			}
		pause(200);
	//	Retorno de Carro, Salto de l�nea en hex ASCII		
		putch(0x0D); 
	    putch(0x0A); 
		


		//Obtiene String desde la terminal
		gets_Serial(&input);
		
		sprintf(buffer,"PORTB: %s  ", input);
		
	//	Muestra en Terminal el valor le�do desde el PIC
		for (char x = 0; x<15; x++)
			{
			putch (buffer[x]);
			}
		pause(200);
	//	Retorno de Carro, Salto de l�nea en hex ASCII		
		putch(0x0D); 
	    putch(0x0A); 
		
		//sscanf(input,"%i ", val);
		//val= atoi(input);
		PORTB = atoi(input);
		

//PWM
		//Obtiene String desde la terminal
		gets_Serial(&input);
		
		sprintf(buffer,"PWM es: %s ", input);
		
	//	Muestra en Terminal el valor le�do desde el PIC
		for (char x = 0; x<15; x++)
			{
			putch (buffer[x]);
			}
		pause(200);
	//	Retorno de Carro, Salto de l�nea en hex ASCII		
		putch(0x0D); 
	    putch(0x0A);
		
		pwm_1 = atoi(input);

		//pwm_1 = 1023;
		

		CCPR1L = (pwm_1>>2) & 0xFF;
		CCP1CON = 0x0C|((pwm_1 & 0x03)<<4); 
		
		pause(1000);

		//Imprime en LCD 
		lcd_goto(0);
		lcd_puts("hOLA");
		lcd_goto(0x40);
		lcd_puts(val);
		//esta pausa es para que el LCD muestre el mensaje
		pause(200);
	
		putch(0x0D); 
	    putch(0x0A); 
		
	}
}


void putch(char dato)
{
 while(!TXIF) continue; 
 TXREG=dato; 
}

char getch()
{
    while(!RCIF) continue; 
    return RCREG;   
}

void gets_Serial( char * s){
    
    for(int i=0; i<=16; i++) *(s+i)=0; 
    for(int i=0; i<16; i++){
        char c=getch();
        //PORTA=0x02; 
        if(c==10 | c==13) break; 
        *(s+i)=c; 
    }
    //PORTA=0x00; 
}


/*
void getString(char *input,+ unsigned int length){
    for(int i=0;i<length;i++){                       
        input[i] = getch();                           //acquire each character until 10 chars are received
        if(input[i]==13)                              //or if newline is received
            break;
    }
    //printf(�\rHello �);
    //printf("%.10s",input);                        //print input string
}


*/