# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;





int rRow;
int rCol;
int rOldRow;
int rOldCol;
int rRDel;
int rCDel;
int rHeight;
int rWidth;

int bRow;
int bCol;
int bdir;


int status;
int bRowRun;
int bColRun;

int refresh;
int heart_count;

int bOldRow;
int bOldCol;
int bRDel;
int bCDel;
int bHeight;
int bWidth;

int BOXLEFT, BOXTOP, BOXBOTTOM, BOXRIGHT, area, state;



extern volatile unsigned short *videoBuffer;
# 67 "gba.h"
void waitForVBlank();


int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 87 "gba.h"
enum {START, GAME, PAUSE, WIN, LOSE};




void drawRect(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
void drawBoarder(int a, int b, int c, int d, unsigned short color);


void getArea();
# 113 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 2 "main.c" 2
# 1 "print.h" 1
# 26 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 27 "print.h" 2
# 36 "print.h"

# 36 "print.h"
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
uint8_t mgba_open(void);
void mgba_close(void);
# 3 "main.c" 2



void draw();
int update();
void initialize();

unsigned short bgColor;
unsigned short buttons;
unsigned short oldButtons;
# 28 "main.c"
void running(){
 status = 2;
 bColRun = bCol;
 bRowRun = bRow;
}

void check_collide_up(){
 if(bRow <= BOXTOP){
  refresh = 1;
  status = 1;
  if(rRow <= bCol){
   BOXRIGHT = bCol;
   bdir = 4;
  }
  else{
   BOXLEFT = bCol;
   bdir = 2;
  }
 }
}

void check_collide_down(){
 if(bRow >= BOXBOTTOM){
  refresh = 1;
  status = 1;
  if(rRow <= bCol){
   BOXRIGHT = bCol;
   bdir = 3;
  }
  else{
   BOXLEFT = bCol;
   bdir = 1;
  }
 }
}

void check_collide_left(){
 if(bCol <= BOXLEFT){
  refresh = 1;
  status = 1;
  if(rCol <= bRow){
   BOXBOTTOM = bRow;
   bdir = 1;
  }
  else{
   BOXTOP = bRow;
   bdir = 2;
  }
 }
}

void check_collide_right(){
 if(bCol >= BOXRIGHT){
  refresh = 1;
  status = 1;
  if(rCol <= bRow){
   BOXBOTTOM = bRow;
   bdir = 3;
  }
  else{
   BOXTOP = bRow;
   bdir = 4;
  }
 }
}


int main() {
 int result;
 while(1){
  initialize();
  while (1) {

   waitForVBlank();
   drawBoarder(BOXLEFT, BOXRIGHT, BOXTOP, BOXBOTTOM, ((0&31) | (31&31) << 5 | (0&31) << 10));
   draw();

   result = update();
   if(result == 1){

    fillScreen(((0&31) | (0&31) << 5 | (31&31) << 10));
    break;
   }
   if(result == -1){

    fillScreen(((0&31) | (31&31) << 5 | (0&31) << 10));
    break;
   }
  }

  while(!(~((*(volatile unsigned short *)0x04000130)) & ((1<<0)))){

  }


 }
}


void initialize() {

    (*(volatile unsigned short *)0x4000000) = ((3) & 7) | (1<<10);


    buttons = buttons;
 oldButtons = 0;
    mgba_open();
    bgColor = ((0&31) | (0&31) << 5 | (0&31) << 10);
    fillScreen(bgColor);

 rRow = 60;
 rCol = 60;
 rOldRow = rRow;
 rOldCol = rCol;
 rRDel = 1;
 rCDel = 1;
 rHeight = 5;
 rWidth = 5;

 bRow = 5;
 bCol = 30;
 bdir = 2;
 status = 1;


 refresh = 0;
 heart_count = 3;

 bOldRow = bRow;
 bOldCol = bCol;
 bRDel = 1;
 bCDel = 1;
 bHeight = 3;
 bWidth = 3;

 BOXTOP = 5;
 BOXBOTTOM = 160 - BOXTOP;
 BOXLEFT = 30;
 BOXRIGHT =240 - BOXLEFT;

}

int update() {

 if (rRow <= BOXLEFT || rRow + rHeight - 1 >= BOXRIGHT)
  rRDel *= -1;
 if (rCol <= BOXTOP || rCol + rWidth - 1 >= BOXBOTTOM)
  rCDel *= -1;


 if (collision(rRow, rCol, rHeight, rWidth,
      bRow, bCol, bHeight, bWidth)){
  rRDel *= -1;
  rCDel *= -1;
 }


 if(status == 2){
  int minRow;
  int minCol;
  int maxRow;
  int maxCol;

  switch(bdir){
   case 1:
    minRow = bRow-(bHeight+rHeight);
    maxRow = bRowRun+(bHeight+rHeight);
    minCol = bCol-(bHeight+rHeight);
    maxCol = bCol+(bHeight+rHeight);
    break;
   case 4:
    minRow = bRowRun-(bHeight+rHeight);
    maxRow = bRow+(bHeight+rHeight);
    minCol = bCol-(bHeight+rHeight);
    maxCol = bCol+(bHeight+rHeight);
    break;
   case 3:
    minRow = bRow-(bHeight+rHeight);
    maxRow = bRow+(bHeight+rHeight);
    minCol = bCol-(bHeight+rHeight);
    maxCol = bColRun+(bHeight+rHeight);
    break;
   case 2:
    minRow = bRow-(bHeight+rHeight);
    maxRow = bRow+(bHeight+rHeight);
    minCol = bColRun-(bHeight+rHeight);
    maxCol = bCol+(bHeight+rHeight);
    break;
   default: break;
  }

  if(rRow > minCol && rRow < maxCol && rCol > minRow && rCol < maxRow){

   refresh = 1;
   status = 1;
   bCol = bColRun;
   bRow = bRowRun;

   switch(bdir){
    case 1: bdir = 3;break;
    case 4: bdir = 2;break;
    case 3: bdir = 4;break;
    case 2: bdir = 1;break;
    default: break;
   }

   heart_count --;
   if(heart_count == 0){
    return -1;
   }
  }


 }



 rRow += rRDel;
 rCol += rCDel;
 mgba_printf("TEST: %d", (~((*(volatile unsigned short *)0x04000130)) & ((1<<6))));
 if(status == 1){
  if((~((*(volatile unsigned short *)0x04000130)) & ((1<<6))) && bdir == 3){
   bdir = 1;
   running();
  }
  else if((~((*(volatile unsigned short *)0x04000130)) & ((1<<7))) && bdir == 2){
   bdir = 4;
   running();
  }
  else if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5))) && bdir == 4){
   bdir = 3;
   running();
  }
  else if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4))) && bdir == 1){
   bdir = 2;
   running();

  }

  else{

   if (bdir == 1){
    if(bRow < BOXTOP + 1){
     bdir = 2;
    }
   }else if(bdir == 4){
    if(bRow > BOXBOTTOM - 1){
     bdir = 3;
    }
   }else if(bdir == 3){
    if(bCol < BOXLEFT + 1){
     bdir = 1;
    }
   }else{
    if(bCol > BOXRIGHT-1){
     bdir = 4;
    }
   }

   switch(bdir){
    case 1: bRow -= 1;break;
    case 4: bRow += 1;break;
    case 3: bCol -= 1;break;
    case 2: bCol += 1;break;
    default: break;
   }

  }


 }

 if(status == 2){
  switch(bdir){
   case 1: bRow -= 1;check_collide_up();break;
   case 4: bRow += 1;check_collide_down();break;
   case 3: bCol -= 1;check_collide_left();break;
   case 2: bCol += 1;check_collide_right();break;
   default: break;
  }

  if((BOXRIGHT-BOXLEFT-bWidth*2)*(BOXBOTTOM-BOXTOP-bHeight*2)<=625){
   return 1;
  }
 }
 return 0;


}

void draw() {

 if (refresh == 1){
  fillScreen(bgColor);
  refresh = 0;
 }

 drawRect(rOldRow, rOldCol, rHeight, rWidth, bgColor);
 drawRect(bOldCol, bOldRow, bWidth, bHeight, bgColor);


 drawRect(rRow, rCol, rHeight, rWidth, ((31&31) | (0&31) << 5 | (0&31) << 10));
 drawRect(bCol, bRow, bWidth, bHeight, ((0&31) | (0&31) << 5 | (31&31) << 10));


 for(int i=0;i<heart_count;i++){
  drawRect(2 + (5 + 3) * i, 2, 5, 5, ((31&31) | (31&31) << 5 | (31&31) << 10));

 }

 if(status == 2){
  switch(bdir){
   case 1: drawRect(bCol, bRow, bWidth, bRowRun-bRow, ((31&31) | (15&31) << 5 | (25&31) << 10));break;
   case 4: drawRect(bCol, bRowRun, bWidth, bRow - bRowRun, ((31&31) | (15&31) << 5 | (25&31) << 10));break;
   case 3: drawRect(bCol, bRow, bColRun - bCol, bHeight, ((31&31) | (15&31) << 5 | (25&31) << 10));break;
   case 2: drawRect(bColRun, bRow, bCol - bColRun, bHeight, ((31&31) | (15&31) << 5 | (25&31) << 10));break;
   default: break;
  }
 }


 rOldRow = rRow;
 rOldCol = rCol;
 bOldRow = bRow;
 bOldCol = bCol;
}
