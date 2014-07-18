    // jon klein, jtklein@alaska.edu
// code to control radar mimic
// see https://github.com/LachlanGunn/Synthesis/blob/master/AD9835.cpp


#define AUX 0
#define TX 1
#define SCLK2 2
#define SDATA2 3
#define SCLK1 8
#define SDATA1 9
#define REFEN 10
#define FSYNC2 11
#define FSYNC1 11
#define TXLED 13
#define AUXLED 14
#define SWA 19
#define SWB 20

#define CHANNELS 2

// command structure:
// [CMD]  [CHANNEL] [PAYLOAD]
// 1 byte 1 byte     4 bytes 
// reply CMD CHANNEL PAYLOAD OKAY
#define SETFREQ 20
#define SETPHASE 30
#define SYNCPHASE 40
#define SETIPP 71
#define SETPLEN 72
#define SETPULSE 73
#define SETTRGAP 74
#define ENABLE 50
#define DISABLE 60
#define ACK 5
#define NAK 6

#define PORT0 0
#define PORT1 1

#define TICKS_PER_PERIOD 500 // 60 ms repetition rate
#define TICK_RES 20 // uS

#define MCLK 50000000

const uint8_t sclk[] = {SCLK1, SCLK2};
const uint8_t sdata[] = {SDATA1, SDATA2};
const uint8_t fsync[] = {FSYNC1, FSYNC2};
volatile uint16_t tickcounter;
uint8_t cmd, channel, stat;
uint32_t payload;
uint32_t plen = 300; // us
uint32_t ipp = 10000; // us q
uint32_t pulseen = 0;
uint32_t trgap = 60; // us delay between TR high and rf pulse

IntervalTimer timer; // see http://www.pjrc.com/teensy/td_timing_IntervalTimer.html

void setup() 
{
	Serial.begin(9600);
      
        pinMode(TX, OUTPUT);
        pinMode(AUX, OUTPUT);
        pinMode(SCLK2, OUTPUT);
        pinMode(SDATA2, OUTPUT);
        pinMode(SCLK1, OUTPUT);
        pinMode(SDATA1, OUTPUT);
        pinMode(REFEN, OUTPUT);
        pinMode(FSYNC2, OUTPUT);
        pinMode(FSYNC1, OUTPUT);
        pinMode(TXLED, OUTPUT);
        pinMode(AUXLED, OUTPUT);
        pinMode(SWA, OUTPUT);
        pinMode(SWB, OUTPUT);
        digitalWrite(REFEN, LOW);
        digitalWrite(FSYNC1, HIGH);   
        
        digitalWrite(AUXLED, HIGH);

        delay(100);
        
        ad9835_init(PORT0);
        ad9835_init(PORT1);

        ad9835_syncphase();
        ad9835_setfreqhz(PORT1, 12000000, 0);
        ad9835_setfreqhz(PORT0, 12000000, 0);
        ad9835_syncen();
        digitalWrite(REFEN, HIGH);
//        ad9835_setphase(PORT0, 0, 0);
//        ad9835_setphase(PORT1, 30, 0);
        
        
       
       while(HIGH)
        {
          set_txswitch(HIGH);
          /*delay(1000);
          set_txswitch(LOW);
          delay(1000);*/
        }
}

void tick(void)
{
  tickcounter++;
  if (tickcounter > TICKS_PER_PERIOD) {
    tickcounter = 0;
  }
  
  
}

// bit-bang the SPI... the SPI library didn't work.. this is a stupid slow approach, but it works
void shiftByte(uint8_t data, uint8_t clk, uint8_t b)
{
  for(int i = 0; i < 8; i++) {
    digitalWrite(clk, HIGH);
    delayMicroseconds(1);
    digitalWrite(data, (b >> (7 - i)) & 0x01);
    delayMicroseconds(1);
    digitalWrite(clk, LOW);
    delayMicroseconds(1);
  }
}

void spi_write16(uint8_t channel, uint8_t msb, uint8_t lsb)
{
  spi_write16_nosync(channel, msb, lsb);
  delay(1);
  digitalWrite(fsync[channel], HIGH);
  delay(1);
}

void spi_write16_nosync(uint8_t channel, uint8_t msb, uint8_t lsb)
{
  delay(1);
  digitalWrite(sclk[channel], LOW);
  delay(1);
  digitalWrite(fsync[channel], LOW);
  delay(1);
  shiftByte(sdata[channel], sclk[channel], msb); // shiftOut(sdata[channel], sclk[channel], MSBFIRST, msb);
  delay(1);
  shiftByte(sdata[channel], sclk[channel], lsb);
}

void ad9835_init(uint8_t channel)
{
  spi_write16(channel, 0xF0, 0x00); // init into sleep mode
  spi_write16(channel, 0xA0, 0x00); // SYNC loading, fsel/psel from io
}

void ad9835_enable(uint8_t channel)
{
  spi_write16(channel, 0xC0, 0x00);
}

void ad9835_disable(uint8_t channel)
{
  spi_write16(channel, 0xE0, 0x00);
}


uint8_t ad9835_setfreqhz(uint8_t channel, uint32_t hz, uint8_t freg) 
{
  if (channel > CHANNELS) {
    return NAK;
  }
  
  uint64_t fcode;
  fcode = ((uint64_t) hz << 32) / MCLK;
  uint8_t baseaddr = (freg & 0x01) << 2;
  
  spi_write16(channel, 0x33 | baseaddr, (fcode & 0xFF000000) >> 24);
  spi_write16(channel, 0x22 | baseaddr, (fcode & 0x00FF0000) >> 16);
  spi_write16(channel, 0x31 | baseaddr, (fcode & 0x0000FF00) >> 8);
  spi_write16(channel, 0x20 | baseaddr, (fcode & 0x000000FF));
  
  return ACK;
}

uint8_t ad9835_setphase(uint8_t channel, uint32_t phasedeg, uint8_t preg)
{
  if (channel > CHANNELS) {
    return NAK;
  }
      
  float pcodef = (phasedeg * 4096 / 360);
  uint32_t pcode = pcodef;
  
  uint8_t baseaddr = (preg & 0x03) << 1;
  spi_write16(channel, 0x19 | baseaddr, (pcode & 0x0F00) >> 8); 
  spi_write16(channel, 0x08 | baseaddr, (pcode & 0x00FF));
   
  return ACK;
}

void ad9835_syncphase(void)
{
  // send reset to both dds
  spi_write16_nosync(PORT0, 0xE0, 0x00);
  spi_write16_nosync(PORT1, 0xE0, 0x00);
  digitalWrite(fsync[0], HIGH);
}

void ad9835_syncen(void)
{
  spi_write16_nosync(PORT0, 0xC0, 0x00);
  spi_write16_nosync(PORT1, 0xC0, 0x00);
  digitalWrite(fsync[0], HIGH);
}

// sets tx switch, nonzero is tx, 0 is terminated
void set_txswitch(uint8_t state)
{
  if(!state) {
    digitalWrite(SWA, HIGH);
    digitalWrite(SWB, LOW);
    digitalWrite(TXLED, HIGH);
  }

  else {
    digitalWrite(SWA, LOW);
    digitalWrite(SWB, HIGH);
    digitalWrite(TXLED, LOW);
  }
}

void pulse(uint32_t pulselen, uint32_t ipp, uint32_t trgap)
{
  digitalWrite(AUX, LOW);
  set_txswitch(LOW);
  ad9835_disable(0);
  ad9835_disable(1);
  delayMicroseconds(ipp - pulselen);

  digitalWrite(AUX, HIGH);
  
  delayMicroseconds(trgap);
  set_txswitch(HIGH);

  ad9835_syncphase();
  
  delayMicroseconds(pulselen - 2 * trgap);
  set_txswitch(LOW);
  delayMicroseconds(trgap);
  digitalWrite(AUX, LOW);
}

void loop() 
{

        
  if (Serial.available() > 5) {
    cmd = Serial.read();
    channel = Serial.read();
    payload = Serial.parseInt();
    stat = NAK;
    
    switch(cmd) {
      case SETFREQ:
        stat = ad9835_setfreqhz(channel, payload, 0);
        break;
        
      case SETPHASE:
        stat = ad9835_setphase(channel, payload, 0);
        break;  
        
      case SYNCPHASE:
        ad9835_syncphase();
        stat = ACK;
        break;
        
      case SETPLEN:
        plen = payload;
        stat = ACK;
        break;
     
      case SETPULSE:
        pulseen = payload;
        if(pulseen) {
          timer.begin(tick, 300);
        }
        else {
          timer.end();
        }
        stat = ACK;
        break;  
        
      case SETTRGAP:
        trgap = payload;
        stat = ACK;
        break;    
     
      case SETIPP:
        ipp = payload;
        stat = ACK;
        break; 
        
      case DISABLE:
        ad9835_disable(channel);
        digitalWrite(REFEN, 0);
        stat = ACK;
        break;
        
      case ENABLE:
        ad9835_enable(channel);
        digitalWrite(REFEN, 1);
        stat = ACK;
        break;
        
    }
    
    Serial.print(cmd, BIN);
    Serial.print(channel, BIN);
    Serial.print(payload, BIN);
    Serial.print(stat, BIN);
  }
  
  if (pulseen) {
      pulse(plen, ipp, trgap);
  }
    
  else {
    set_txswitch(digitalRead(TX));
  }
  
  
}

