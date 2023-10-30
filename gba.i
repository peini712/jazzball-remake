# 1 "gba.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "gba.c"
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
# 2 "gba.c" 2


volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;


void drawRect(int x, int y, int width, int height, unsigned short color) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            (videoBuffer[((y + i) * (240) + (x + j))] = color);
        }
    }
}


void fillScreen(unsigned short color) {
    for (int i = 0; i < 240 * 160; i++) {
        videoBuffer[i] = color;
    }
}


void drawBoarder(int a, int b, int c, int d, unsigned short color) {




 drawRect(a, c, 3, (d - c), color);
 drawRect(a, c, (b - a), 3, color);
 drawRect(a, d, (b - a) + 3, 3, color);
 drawRect(b, c, 3, (d - c), color);

}


void getArea() {
    area = (BOXRIGHT - BOXLEFT) * (BOXBOTTOM - BOXTOP);
}


int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2) {
    return y1 < y2 + height2 && y1 + height1 > y2 && x1 < x2 + width2 && x1 + width1 > x2;
}


void waitForVBlank() {
    while ((*(volatile unsigned short *)0x4000006) >= 160);
    while ((*(volatile unsigned short *)0x4000006) < 160);
}
