#include "gba.h"
#include "print.h"


//prototypes
void draw();
int update();
void initialize();

unsigned short bgColor;
unsigned short buttons;
unsigned short oldButtons;

#define up 1
#define right 2
#define left 3
#define down 4

#define normal 1
#define run 2
#define bspeed 1

#define heart_row 2
#define heart_col 2
#define heart_size 5
#define heart_space 3

void running(){
	status = run;
	bColRun = bCol;
	bRowRun = bRow;
}

void check_collide_up(){
	if(bRow <= BOXTOP){
		refresh = 1;
		status = normal;
		if(rRow <= bCol){
			BOXRIGHT = bCol;
			bdir = down;
		}
		else{
			BOXLEFT = bCol;
			bdir = right;
		}
	}
}

void check_collide_down(){
	if(bRow >= BOXBOTTOM){
		refresh = 1;
		status = normal;
		if(rRow <= bCol){
			BOXRIGHT = bCol;
			bdir = left;
		}
		else{
			BOXLEFT = bCol;
			bdir = up;
		}
	}
}

void check_collide_left(){
	if(bCol <= BOXLEFT){
		refresh = 1;
		status = normal;
		if(rCol <= bRow){
			BOXBOTTOM = bRow;
			bdir = up;
		}
		else{
			BOXTOP = bRow;
			bdir = right;
		}
	}
}

void check_collide_right(){
	if(bCol >= BOXRIGHT){
		refresh = 1;
		status = normal;
		if(rCol <= bRow){
			BOXBOTTOM = bRow;
			bdir = left;
		}
		else{
			BOXTOP = bRow;
			bdir = down;
		}
	}
}


int main() {
	int result;
	while(1){
		initialize();
		while (1) {
		// update();
			waitForVBlank();
			drawBoarder(BOXLEFT, BOXRIGHT, BOXTOP, BOXBOTTOM, GREEN);
			draw();
			
			result = update();
			if(result == 1){
				// Win
				fillScreen(BLUE);
				break;
			}
			if(result == -1){
				// Loss
				fillScreen(GREEN);
				break;
			}
		}

		while(!BUTTON_HELD(BUTTON_A)){
			
		}


	}
}

//Initialize
void initialize() {

    REG_DISPCTL = MODE(3) | BG2_ENABLE;

    //button
    buttons = buttons;
	oldButtons = 0;
    mgba_open();
    bgColor = BLACK;
    fillScreen(bgColor);
    // Initialize bouncing ball
	rRow = 60;
	rCol = 60;
	rOldRow = rRow;
	rOldCol = rCol;
	rRDel = 1;
	rCDel = 1;
	rHeight = 5;
	rWidth = 5;
    // Initialize user rectangle
	bRow = 5;
	bCol = 30;
	bdir = right;
	status = normal;

	// test if refresh is needed
	refresh = 0;
	heart_count = 3;

	bOldRow = bRow;
	bOldCol = bCol;
	bRDel = 1;
	bCDel = 1;
	bHeight = 3;
	bWidth = 3;
	//Initialize Box Boader
	BOXTOP = 5;
	BOXBOTTOM = SCREENHEIGHT - BOXTOP;
	BOXLEFT = 30;
	BOXRIGHT =SCREENWIDTH - BOXLEFT;
    
}

int update() {
    // Bouncing Red Ball 
	if (rRow <= BOXLEFT || rRow + rHeight - 1 >= BOXRIGHT)
		rRDel *= -1;
	if (rCol <= BOXTOP || rCol + rWidth - 1 >= BOXBOTTOM)
		rCDel *= -1;

	// Bouncing balls
	if (collision(rRow, rCol, rHeight, rWidth,
				  bRow, bCol, bHeight, bWidth)){
		rRDel *= -1;
		rCDel *= -1;
	}

	// When hitting pink line
	if(status == run){
		int minRow;
		int minCol;
		int maxRow;
		int maxCol;

		switch(bdir){
			case up: 
				minRow = bRow-(bHeight+rHeight);
				maxRow = bRowRun+(bHeight+rHeight);
				minCol = bCol-(bHeight+rHeight);
				maxCol = bCol+(bHeight+rHeight);
				break;
			case down: 
				minRow = bRowRun-(bHeight+rHeight);
				maxRow = bRow+(bHeight+rHeight);
				minCol = bCol-(bHeight+rHeight);
				maxCol = bCol+(bHeight+rHeight);
				break;
			case left:
				minRow = bRow-(bHeight+rHeight);
				maxRow = bRow+(bHeight+rHeight);
				minCol = bCol-(bHeight+rHeight);
				maxCol = bColRun+(bHeight+rHeight);
				break;
			case right: 
				minRow = bRow-(bHeight+rHeight);
				maxRow = bRow+(bHeight+rHeight);
				minCol = bColRun-(bHeight+rHeight);
				maxCol = bCol+(bHeight+rHeight);
				break;
			default: break;
		}

		if(rRow > minCol && rRow < maxCol && rCol > minRow && rCol < maxRow){
			//collide
			refresh = 1;
			status = normal;
			bCol = bColRun;
			bRow = bRowRun;

			switch(bdir){
				case up: bdir = left;break;
				case down: bdir = right;break;
				case left: bdir = down;break;
				case right: bdir = up;break;
				default: break;
			}

			heart_count --;
			if(heart_count == 0){
				return -1;
			}
		}


	}


	// Update red ball's position
	rRow += rRDel;
	rCol += rCDel;
	mgba_printf("TEST: %d", BUTTON_HELD(BUTTON_UP));
	if(status == normal){
		if(BUTTON_HELD(BUTTON_UP) && bdir == left){
			bdir = up;
			running();
		}
		else if(BUTTON_HELD(BUTTON_DOWN) && bdir == right){
			bdir = down;
			running();
		}
		else if(BUTTON_HELD(BUTTON_LEFT) && bdir == down){
			bdir = left;
			running();
		}
		else if(BUTTON_HELD(BUTTON_RIGHT) && bdir == up){
			bdir = right;
			running();

		}
		// no button
		else{

			if (bdir == up){
				if(bRow < BOXTOP + 1){
					bdir = right;
				}
			}else if(bdir == down){
				if(bRow > BOXBOTTOM - 1){
					bdir = left;
				}
			}else if(bdir == left){
				if(bCol < BOXLEFT + 1){
					bdir = up;
				}
			}else{
				if(bCol > BOXRIGHT-1){
					bdir = down;
				}
			}
			
			switch(bdir){
				case up: bRow -= bspeed;break;
				case down: bRow += bspeed;break;
				case left: bCol -= bspeed;break;
				case right: bCol += bspeed;break;
				default: break;
			}

		}


	}
	// switch status
	if(status == run){
		switch(bdir){
			case up: bRow -= bspeed;check_collide_up();break;
			case down: bRow += bspeed;check_collide_down();break;
			case left: bCol -= bspeed;check_collide_left();break;
			case right: bCol += bspeed;check_collide_right();break;
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
	// Erase the previous locations
	drawRect(rOldRow, rOldCol, rHeight, rWidth, bgColor);
	drawRect(bOldCol, bOldRow, bWidth, bHeight, bgColor);

	// Draw the new locations
	drawRect(rRow, rCol, rHeight, rWidth, RED);
	drawRect(bCol, bRow, bWidth, bHeight, BLUE);

	// Draw heart
	for(int i=0;i<heart_count;i++){
		drawRect(heart_col + (heart_size + heart_space) * i, heart_row, heart_size, heart_size, WHITE);

	}
	
	if(status == run){
		switch(bdir){
			case up: drawRect(bCol, bRow, bWidth, bRowRun-bRow, PINK);break;
			case down: drawRect(bCol, bRowRun, bWidth, bRow - bRowRun, PINK);break;
			case left: drawRect(bCol, bRow, bColRun - bCol, bHeight, PINK);break;
			case right: drawRect(bColRun, bRow, bCol - bColRun, bHeight, PINK);break;
			default: break;
		}
	}

	// Update old variables
	rOldRow = rRow;
	rOldCol = rCol;
	bOldRow = bRow;
	bOldCol = bCol;
}

