#include <htc.h>

#define RX_PIN TRISC7
#define TX_PIN TRISC6

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF); //Internal clock, Watchdog off, MCLR off, Code Unprotected

void msecbase(){
    //La siguiente lï¿½nea fue la ï¿½nica que se cambiï¿½. Antes estaba como OPTION. 
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
char getch(void ); 

void gets_Serial(char *); 

unsigned char *pa=&PORTA; 
char input[17];
int  convint;  
int dir; 
int  atoi( const char * s );


//LCD CONFIG

char init_value=0x03;

#define LCD_RS RA7
#define LCD_RW RE1
#define LCD_EN RA6

#define LCD_DATA PORTD
#define LCD_STROBE()  ((LCD_EN=1),(LCD_EN=0))
/*
void msecbase(void)
{
	OPTION_REG = 0b00000001;		
	TMR0 = 0xD;				
	while(!T0IF);			
	T0IF = 0;				
}
*/

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
    ANSEL=0x00; 
    ANSELH=0x00; 
    INTCON=0x00; 
    TRISA = 0x00;		//nible menos significativo de PORTA como entrada. 
    TRISB = 0x00;       //PORTB como salida (RE y RS)
    TRISD = 0x00;       //PORTD como salida (pines data de la LCD)
    
	LCD_RS=0;
	LCD_EN=0;
	LCD_RW=0;
	
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
	
    RX_PIN=1; 
    TX_PIN=0; 
    OSCCON=0x70; 
    SPBRG=12; //9600 BAUDIOS.Cambiar para otra cantidad. 
    RCSTA=0x90; //RecepciÃ³n disponible (SREN=1), 8 Bits, SPEN=1 (Puerto serial habilitados). 
    TXSTA=0x20; //Baja velocidad, SYNC=0 modo asÃ­ncrono, TXEN=1, 8 bits.
    BAUDCTL=0x00; //Detector de Baudios deshabilitado, 8 bits, sin inversiÃ³n, 
    pause(500); 
    PORTA=0x01;
    *pa=0xFF;

	char char_recibido;
    
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
    PORTA=0x00; 
    pause(1000); 

/*		char_recibido = getch();
		putch(char_recibido);
		pause(1500);
		lcd_goto(0);
		lcd_puts("hola");
		pause(1500);
		
		lcd_clear();
		
		lcd_goto(0);
//		lcd_puts(char_recibido);
		pause(1500);
		// gets_Serial(input);
		// for (char x = 0; x<17; x++)
		// 	{
		// 	putch (input[x]);
		// 	}
		putch(0x0D);		// Send ASCII value for carriage return 
		putch(0x0A);
		pause(1500);
*/		

//	unsigned char *buffer = (char *)0x20;   //assign to start of gen.purpose registers
    //printf("Enter your name: ");
	
//	getString(&buffer, 10);


	while(1){
		char_recibido = getch();
		putch(char_recibido);
		putch(0x0D);		// Send ASCII value for carriage return 
		putch(0x0A);
	
		lcd_goto(0);
		lcd_putch(char_recibido);
		pause(500);
		
		 for(int i=97; i<123; i++){
	        putch(i); 
	        pause(20); 
	    }
	    putch(0x0D); 
	    putch(0x0A); 
	    //PORTA=0x00; 
	    //pause(1000); 
		
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
        PORTA=0x02; 
        if(c==10 | c==13) break; 
        *(s+i)=c; 
    }
    PORTA=0x00; 
}


/*
void getString(char *input, unsigned int length){
    for(int i=0;i<length;i++){                       
        input[i] = getch();                           //acquire each character until 10 chars are received
        if(input[i]==13)                              //or if newline is received
            break;
    }
    //printf(“\rHello “);
    //printf("%.10s",input);                        //print input string
}


*/