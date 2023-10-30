	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"gba.c"
	.text
	.align	2
	.global	drawRect
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	lr, r3, #0
	ldrh	ip, [sp, #8]
	ble	.L1
	rsb	r1, r1, r1, lsl #4
	add	r3, r2, r1, lsl #4
	add	r3, r3, r0
	mov	r0, #0
	ldr	r4, .L10
	ldr	r1, [r4]
	rsb	r4, r2, r2, lsl #31
	add	r1, r1, r3, lsl #1
	lsl	r4, r4, #1
.L3:
	cmp	r2, #0
	addgt	r3, r1, r4
	ble	.L6
.L4:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L4
.L6:
	add	r0, r0, #1
	cmp	lr, r0
	add	r1, r1, #480
	bne	.L3
.L1:
	pop	{r4, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L16
	ldr	r3, [r3]
	add	r2, r3, #76800
.L13:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L13
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.size	fillScreen, .-fillScreen
	.align	2
	.global	drawBoarder
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBoarder, %function
drawBoarder:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	ip, .L45
	sub	r6, r3, r2
	cmp	r6, #0
	ldr	r10, [ip]
	ldrh	ip, [sp, #36]
	ble	.L44
	rsb	r9, r2, r2, lsl #4
	add	r8, r6, r2
	add	r5, r0, r9, lsl #4
	add	r4, r10, #6
	rsb	r8, r8, r8, lsl #4
	lsl	r9, r9, #4
	add	r5, r4, r5, lsl #1
	lsl	r8, r8, #4
	lsl	r7, r2, #4
.L22:
	sub	lr, r5, #6
.L21:
	strh	ip, [lr], #2	@ movhi
	cmp	lr, r5
	bne	.L21
	add	r9, r9, #240
	cmp	r9, r8
	add	r5, r5, #480
	bne	.L22
.L23:
	mov	lr, r1
	sub	fp, r7, r2
	sub	r8, r1, r0
	add	r5, r1, fp, lsl #4
	rsb	r9, r8, r8, lsl #31
	lsl	fp, fp, #4
	add	r5, r10, r5, lsl #1
	lsl	r9, r9, #1
	add	r10, fp, #720
.L20:
	cmp	r8, #0
	addgt	r0, r5, r9
	ble	.L27
.L24:
	strh	ip, [r0], #2	@ movhi
	cmp	r0, r5
	bne	.L24
.L27:
	add	fp, fp, #240
	cmp	fp, r10
	add	r5, r5, #480
	bne	.L20
	rsb	r3, r3, r3, lsl #4
	add	r0, lr, r3, lsl #4
	lsl	lr, r3, #4
	add	r0, r4, r0, lsl #1
	sub	r9, r9, #6
	add	r5, lr, #720
.L28:
	cmn	r8, #2
	addge	r3, r9, r0
	blt	.L32
.L29:
	strh	ip, [r3], #2	@ movhi
	cmp	r3, r0
	bne	.L29
.L32:
	add	lr, lr, #240
	cmp	lr, r5
	add	r0, r0, #480
	bne	.L28
	cmp	r6, #0
	ble	.L18
	sub	r7, r7, r2
	add	r2, r6, r2
	add	r1, r1, r7, lsl #4
	rsb	r6, r2, r2, lsl #4
	lsl	r0, r6, #4
	add	r2, r4, r1, lsl #1
	lsl	r1, r7, #4
.L34:
	sub	r3, r2, #6
.L33:
	strh	ip, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L33
	add	r1, r1, #240
	cmp	r0, r1
	add	r2, r2, #480
	bne	.L34
.L18:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L44:
	lsl	r7, r2, #4
	add	r4, r10, #6
	b	.L23
.L46:
	.align	2
.L45:
	.word	.LANCHOR0
	.size	drawBoarder, .-drawBoarder
	.align	2
	.global	getArea
	.syntax unified
	.arm
	.fpu softvfp
	.type	getArea, %function
getArea:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L48
	ldr	r0, .L48+4
	ldr	r2, .L48+8
	ldr	r1, .L48+12
	ldr	r2, [r2]
	ldr	r3, [r3]
	ldr	r0, [r0]
	ldr	r1, [r1]
	sub	r3, r3, r0
	sub	r2, r2, r1
	mul	r3, r2, r3
	ldr	r2, .L48+16
	str	r3, [r2]
	bx	lr
.L49:
	.align	2
.L48:
	.word	BOXRIGHT
	.word	BOXLEFT
	.word	BOXBOTTOM
	.word	BOXTOP
	.word	area
	.size	getArea, .-getArea
	.align	2
	.global	collision
	.syntax unified
	.arm
	.fpu softvfp
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	lr, [sp, #8]
	ldr	ip, [sp, #16]
	add	ip, lr, ip
	cmp	ip, r1
	ble	.L54
	add	r1, r1, r3
	cmp	r1, lr
	bgt	.L56
.L54:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L56:
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #12]
	add	r3, r3, r1
	cmp	r3, r0
	ble	.L54
	ldr	r3, [sp, #4]
	add	r0, r0, r2
	cmp	r0, r3
	movle	r0, #0
	movgt	r0, #1
	ldr	lr, [sp], #4
	bx	lr
	.size	collision, .-collision
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L58:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bhi	.L58
	mov	r2, #67108864
.L59:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L59
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.global	videoBuffer
	.comm	state,4,4
	.comm	area,4,4
	.comm	BOXRIGHT,4,4
	.comm	BOXBOTTOM,4,4
	.comm	BOXTOP,4,4
	.comm	BOXLEFT,4,4
	.comm	bWidth,4,4
	.comm	bHeight,4,4
	.comm	bCDel,4,4
	.comm	bRDel,4,4
	.comm	bOldCol,4,4
	.comm	bOldRow,4,4
	.comm	heart_count,4,4
	.comm	refresh,4,4
	.comm	bColRun,4,4
	.comm	bRowRun,4,4
	.comm	status,4,4
	.comm	bdir,4,4
	.comm	bCol,4,4
	.comm	bRow,4,4
	.comm	rWidth,4,4
	.comm	rHeight,4,4
	.comm	rCDel,4,4
	.comm	rRDel,4,4
	.comm	rOldCol,4,4
	.comm	rOldRow,4,4
	.comm	rCol,4,4
	.comm	rRow,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
