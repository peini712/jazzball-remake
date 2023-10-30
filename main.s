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
	.file	"main.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	check_collide_up.part.0, %function
check_collide_up.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r1, .L5
	ldr	r3, .L5+4
	ldr	ip, [r1]
	ldr	r3, [r3]
	ldr	r0, .L5+8
	cmp	ip, r3
	str	r2, [r0]
	movle	r0, #4
	movgt	r0, #2
	ldr	r1, .L5+12
	str	r2, [r1]
	ldrle	r1, .L5+16
	ldrle	r2, .L5+20
	ldrgt	r1, .L5+16
	ldrgt	r2, .L5+24
	str	r0, [r1]
	str	r3, [r2]
	bx	lr
.L6:
	.align	2
.L5:
	.word	rRow
	.word	bCol
	.word	refresh
	.word	status
	.word	bdir
	.word	BOXRIGHT
	.word	BOXLEFT
	.size	check_collide_up.part.0, .-check_collide_up.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	check_collide_down.part.0, %function
check_collide_down.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1
	ldr	r1, .L10
	ldr	r2, .L10+4
	ldr	ip, [r1]
	ldr	r2, [r2]
	ldr	r0, .L10+8
	cmp	ip, r2
	str	r3, [r0]
	movle	r0, #3
	ldr	r1, .L10+12
	ldrgt	r0, .L10+16
	str	r3, [r1]
	ldrle	r1, .L10+20
	ldrle	r3, .L10+24
	ldrgt	r1, .L10+20
	strle	r0, [r1]
	strle	r2, [r3]
	strgt	r2, [r0]
	strgt	r3, [r1]
	bx	lr
.L11:
	.align	2
.L10:
	.word	rRow
	.word	bCol
	.word	refresh
	.word	status
	.word	BOXLEFT
	.word	bdir
	.word	BOXRIGHT
	.size	check_collide_down.part.0, .-check_collide_down.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	check_collide_left.part.0, %function
check_collide_left.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1
	ldr	r1, .L15
	ldr	r2, .L15+4
	ldr	ip, [r1]
	ldr	r2, [r2]
	ldr	r0, .L15+8
	cmp	ip, r2
	str	r3, [r0]
	movgt	r0, #2
	ldr	r1, .L15+12
	ldrle	r0, .L15+16
	str	r3, [r1]
	ldrle	r1, .L15+20
	ldrgt	r1, .L15+20
	ldrgt	r3, .L15+24
	strle	r2, [r0]
	strle	r3, [r1]
	strgt	r0, [r1]
	strgt	r2, [r3]
	bx	lr
.L16:
	.align	2
.L15:
	.word	rCol
	.word	bRow
	.word	refresh
	.word	status
	.word	BOXBOTTOM
	.word	bdir
	.word	BOXTOP
	.size	check_collide_left.part.0, .-check_collide_left.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	check_collide_right.part.0, %function
check_collide_right.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	ldr	r1, .L20
	ldr	r3, .L20+4
	ldr	ip, [r1]
	ldr	r3, [r3]
	ldr	r0, .L20+8
	cmp	ip, r3
	str	r2, [r0]
	movle	r0, #3
	movgt	r0, #4
	ldr	r1, .L20+12
	str	r2, [r1]
	ldrle	r1, .L20+16
	ldrle	r2, .L20+20
	ldrgt	r1, .L20+16
	ldrgt	r2, .L20+24
	str	r0, [r1]
	str	r3, [r2]
	bx	lr
.L21:
	.align	2
.L20:
	.word	rCol
	.word	bRow
	.word	refresh
	.word	status
	.word	bdir
	.word	BOXBOTTOM
	.word	BOXTOP
	.size	check_collide_right.part.0, .-check_collide_right.part.0
	.align	2
	.global	running
	.syntax unified
	.arm
	.fpu softvfp
	.type	running, %function
running:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #2
	ldr	r1, .L24
	ldr	r3, .L24+4
	str	lr, [sp, #-4]!
	ldr	r0, [r3]
	ldr	lr, [r1]
	ldr	ip, .L24+8
	ldr	r1, .L24+12
	ldr	r3, .L24+16
	str	lr, [ip]
	str	r0, [r1]
	str	r2, [r3]
	ldr	lr, [sp], #4
	bx	lr
.L25:
	.align	2
.L24:
	.word	bCol
	.word	bRow
	.word	bColRun
	.word	bRowRun
	.word	status
	.size	running, .-running
	.align	2
	.global	check_collide_up
	.syntax unified
	.arm
	.fpu softvfp
	.type	check_collide_up, %function
check_collide_up:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L28
	ldr	r3, .L28+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bxgt	lr
	b	check_collide_up.part.0
.L29:
	.align	2
.L28:
	.word	bRow
	.word	BOXTOP
	.size	check_collide_up, .-check_collide_up
	.align	2
	.global	check_collide_down
	.syntax unified
	.arm
	.fpu softvfp
	.type	check_collide_down, %function
check_collide_down:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L32
	ldr	r3, .L32+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bxlt	lr
	b	check_collide_down.part.0
.L33:
	.align	2
.L32:
	.word	bRow
	.word	BOXBOTTOM
	.size	check_collide_down, .-check_collide_down
	.align	2
	.global	check_collide_left
	.syntax unified
	.arm
	.fpu softvfp
	.type	check_collide_left, %function
check_collide_left:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L36
	ldr	r3, .L36+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bxgt	lr
	b	check_collide_left.part.0
.L37:
	.align	2
.L36:
	.word	bCol
	.word	BOXLEFT
	.size	check_collide_left, .-check_collide_left
	.align	2
	.global	check_collide_right
	.syntax unified
	.arm
	.fpu softvfp
	.type	check_collide_right, %function
check_collide_right:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L40
	ldr	r3, .L40+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bxlt	lr
	b	check_collide_right.part.0
.L41:
	.align	2
.L40:
	.word	bCol
	.word	BOXRIGHT
	.size	check_collide_right, .-check_collide_right
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	ldr	r1, .L44
	ldr	r2, .L44+4
	strh	r1, [r3]	@ movhi
	ldr	r3, .L44+8
	strh	r4, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L44+12
	mov	r0, r4
	ldr	r3, .L44+16
	strh	r4, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r1, #60
	mov	r2, #1
	mov	r3, #5
	mov	ip, #30
	ldr	r7, .L44+20
	str	r4, [r7]
	ldr	r4, .L44+24
	str	r1, [r4]
	ldr	r4, .L44+28
	mov	r6, #2
	str	r1, [r4]
	ldr	r4, .L44+32
	mov	r0, #3
	str	r1, [r4]
	ldr	r4, .L44+36
	mov	r5, #155
	mov	lr, #210
	str	r1, [r4]
	ldr	r1, .L44+40
	str	r2, [r1]
	ldr	r1, .L44+44
	str	r2, [r1]
	ldr	r1, .L44+48
	str	r2, [r1]
	ldr	r1, .L44+52
	str	r2, [r1]
	ldr	r1, .L44+56
	str	r2, [r1]
	ldr	r2, .L44+60
	str	r3, [r2]
	ldr	r2, .L44+64
	str	r3, [r2]
	ldr	r2, .L44+68
	str	r3, [r2]
	ldr	r2, .L44+72
	str	r3, [r2]
	ldr	r2, .L44+76
	str	r3, [r2]
	ldr	r3, .L44+80
	str	ip, [r3]
	ldr	r3, .L44+84
	str	ip, [r3]
	ldr	r3, .L44+88
	str	ip, [r3]
	ldr	r3, .L44+92
	ldr	r2, .L44+96
	str	r6, [r3]
	ldr	r3, .L44+100
	str	r0, [r2]
	str	r0, [r3]
	ldr	r1, .L44+104
	ldr	r2, .L44+108
	ldr	r3, .L44+112
	str	r5, [r2]
	str	lr, [r3]
	str	r0, [r1]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L45:
	.align	2
.L44:
	.word	1027
	.word	oldButtons
	.word	mgba_open
	.word	bgColor
	.word	fillScreen
	.word	refresh
	.word	rRow
	.word	rCol
	.word	rOldRow
	.word	rOldCol
	.word	rRDel
	.word	rCDel
	.word	status
	.word	bRDel
	.word	bCDel
	.word	rHeight
	.word	rWidth
	.word	bRow
	.word	bOldRow
	.word	BOXTOP
	.word	bCol
	.word	bOldCol
	.word	BOXLEFT
	.word	bdir
	.word	heart_count
	.word	bHeight
	.word	bWidth
	.word	BOXBOTTOM
	.word	BOXRIGHT
	.size	initialize, .-initialize
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"TEST: %d\000"
	.text
	.align	2
	.global	update
	.syntax unified
	.arm
	.fpu softvfp
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L123
	ldr	r5, .L123+4
	ldr	r3, [r3]
	ldr	r0, [r5]
	cmp	r0, r3
	ldr	r3, .L123+8
	sub	sp, sp, #44
	ldr	r2, [r3]
	ble	.L47
	ldr	r3, .L123+12
	ldr	r3, [r3]
	add	r1, r0, r2
	cmp	r1, r3
	bgt	.L47
.L48:
	ldr	r4, .L123+16
	ldr	r9, .L123+20
	ldr	r1, [r4]
	ldr	ip, [r9]
	ldr	r3, .L123+24
	cmp	r1, ip
	ldr	r3, [r3]
	ble	.L49
	ldr	ip, .L123+28
	ldr	ip, [ip]
	add	lr, r1, r3
	cmp	lr, ip
	bgt	.L49
.L50:
	ldr	r10, .L123+32
	ldr	r8, .L123+36
	ldr	lr, [r10]
	ldr	ip, [r8]
	ldr	r7, .L123+40
	ldr	r6, .L123+44
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r7]
	ldr	ip, [r6]
	ldr	fp, .L123+48
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	beq	.L51
	ldr	r0, .L123+52
	ldr	r1, .L123+56
	ldr	r2, [r0]
	ldr	r3, [r1]
	rsb	r2, r2, #0
	rsb	r3, r3, #0
	str	r2, [r0]
	str	r3, [r1]
.L51:
	ldr	fp, .L123+60
	ldr	r3, [fp]
	cmp	r3, #2
	ldr	r2, [r4]
	ldr	r3, [r5]
	bne	.L61
	ldr	r1, .L123+64
	ldr	r0, [r1]
	sub	r0, r0, #1
	str	r0, [sp, #28]
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L55
.L57:
	.word	.L60
	.word	.L59
	.word	.L58
	.word	.L56
.L49:
	ldr	lr, .L123+56
	ldr	ip, [lr]
	rsb	ip, ip, #0
	str	ip, [lr]
	b	.L50
.L47:
	ldr	r1, .L123+52
	ldr	r3, [r1]
	rsb	r3, r3, #0
	str	r3, [r1]
	b	.L48
.L56:
	ldr	r0, .L123+8
	ldr	ip, .L123+68
	ldr	r0, [r0]
	ldr	lr, [r8]
	ldr	ip, [ip]
	add	r0, lr, r0
	sub	ip, ip, r0
	str	ip, [sp, #32]
	ldr	ip, [r6]
	add	ip, r0, ip
	str	ip, [sp, #36]
	ldr	ip, [r7]
.L109:
	sub	ip, ip, r0
	str	ip, [sp, #20]
	ldr	ip, [r7]
	add	r0, r0, ip
	str	r0, [sp, #24]
.L55:
	add	r0, sp, #20
	ldm	r0, {r0, ip}
	cmp	r0, r3
	movge	r0, #0
	movlt	r0, #1
	cmp	ip, r3
	movle	r0, #0
	cmp	r0, #0
	bne	.L111
.L61:
	ldr	r1, .L123+56
	ldr	r1, [r1]
	add	r2, r1, r2
	str	r2, [r4]
	ldr	r4, .L123+72
	ldrh	r1, [r4, #48]
	mvn	r1, r1
	ldr	r0, .L123+52
	ldr	r0, [r0]
	add	r3, r0, r3
	str	r3, [r5]
	ldr	r0, .L123+76
	ldr	r3, .L123+80
	and	r1, r1, #64
	mov	lr, pc
	bx	r3
	ldr	r2, [fp]
	cmp	r2, #1
	beq	.L112
	cmp	r2, #2
	beq	.L113
.L86:
	mov	r0, #0
.L46:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L112:
	ldrh	r3, [r4, #48]
	ldr	r1, .L123+64
	tst	r3, #64
	ldr	r3, [r1]
	bne	.L69
	cmp	r3, #3
	bne	.L69
	mov	r0, #2
	ldr	ip, [r7]
	str	r2, [r1]
	ldr	r2, .L123+84
	ldr	r3, .L123+68
	str	ip, [r2]
	ldr	r2, [r6]
	str	r0, [fp]
	str	r2, [r3]
.L70:
	ldr	r3, [r6]
	ldr	r1, [r9]
	sub	r3, r3, #1
	cmp	r3, r1
	str	r3, [r6]
	bgt	.L114
	bl	check_collide_up.part.0
.L110:
	ldr	r1, .L123
	ldr	r3, .L123+12
	ldr	r2, .L123+28
	ldr	r0, [r1]
	ldr	r3, [r3]
	ldr	r1, [r9]
	ldr	r2, [r2]
.L89:
	ldr	lr, [r10]
	ldr	ip, [r8]
	sub	r0, r3, r0
	sub	r2, r2, r1
	sub	r0, r0, lr, lsl #1
	sub	r2, r2, ip, lsl #1
	mul	r0, r2, r0
	ldr	r3, .L123+88
	cmp	r0, r3
	movgt	r0, #0
	movle	r0, #1
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L69:
	ldr	r2, .L123+72
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L71
	cmp	r3, #2
	beq	.L115
.L71:
	ldr	r2, .L123+72
	ldrh	r2, [r2, #48]
	tst	r2, #32
	beq	.L116
.L73:
	ldr	r2, .L123+72
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L75
	cmp	r3, #1
	beq	.L117
.L76:
	cmp	r3, #4
	beq	.L118
	cmp	r3, #3
	ldr	r2, [r7]
	beq	.L119
	ldr	r0, .L123+12
	ldr	r0, [r0]
	cmp	r0, r2
	bgt	.L84
	mov	r2, #4
	ldr	r3, [r6]
	str	r2, [r1]
.L81:
	add	r3, r3, #1
	str	r3, [r6]
	b	.L86
.L111:
	ldr	ip, [sp, #32]
	ldr	r0, [sp, #36]
	cmp	ip, r2
	movge	ip, #0
	movlt	ip, #1
	cmp	r0, r2
	movle	ip, #0
	cmp	ip, #0
	beq	.L61
	ldr	ip, .L123+68
	ldr	ip, [ip]
	str	ip, [r6]
	mov	ip, #1
	ldr	r0, .L123+84
	ldr	r0, [r0]
	str	r0, [r7]
	ldr	r0, .L123+92
	str	ip, [r0]
	ldr	r0, [sp, #28]
	str	ip, [fp]
	cmp	r0, #3
	ldrls	pc, [pc, r0, asl #2]
	b	.L62
.L64:
	.word	.L67
	.word	.L66
	.word	.L65
	.word	.L63
.L59:
	ldr	r0, .L123+8
	ldr	lr, [r8]
	ldr	r0, [r0]
	add	r0, lr, r0
	ldr	lr, [r6]
	sub	lr, lr, r0
	str	lr, [sp, #32]
	ldr	lr, [r6]
	ldr	ip, .L123+84
	add	lr, lr, r0
	ldr	ip, [ip]
	str	lr, [sp, #36]
	b	.L109
.L58:
	ldr	r0, .L123+8
	ldr	lr, [r8]
	ldr	r0, [r0]
	add	r0, lr, r0
	ldr	lr, [r6]
	sub	lr, lr, r0
	str	lr, [sp, #32]
	ldr	lr, [r6]
	ldr	ip, .L123+84
	add	lr, lr, r0
	ldr	ip, [ip]
	str	lr, [sp, #36]
	ldr	lr, [r7]
	sub	lr, lr, r0
	add	r0, r0, ip
	str	lr, [sp, #20]
	str	r0, [sp, #24]
	b	.L55
.L60:
	ldr	r0, .L123+8
	ldr	lr, [r8]
	ldr	ip, .L123+68
	ldr	r0, [r0]
	ldr	ip, [ip]
	add	r0, lr, r0
	ldr	lr, [r6]
	add	ip, r0, ip
	sub	lr, lr, r0
	str	ip, [sp, #36]
	str	lr, [sp, #32]
	ldr	ip, [r7]
	b	.L109
.L116:
	cmp	r3, #4
	bne	.L73
	mov	r3, #3
	mov	r0, #2
	ldr	r2, .L123+68
	ldr	ip, [r6]
	str	r3, [r1]
	str	ip, [r2]
	ldr	r3, .L123+84
	ldr	r2, [r7]
	str	r0, [fp]
	str	r2, [r3]
.L74:
	ldr	r2, .L123
	ldr	r3, [r7]
	ldr	r0, [r2]
	sub	r3, r3, #1
	cmp	r3, r0
	str	r3, [r7]
	bgt	.L120
	bl	check_collide_left.part.0
	b	.L110
.L113:
	ldr	r3, .L123+64
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L110
.L88:
	.word	.L70
	.word	.L77
	.word	.L74
	.word	.L72
.L117:
	mov	r3, #2
	ldr	ip, [r6]
	ldr	r0, .L123+68
	str	r3, [r1]
	ldr	r2, .L123+84
	ldr	r1, [r7]
	str	ip, [r0]
	str	r3, [fp]
	str	r1, [r2]
.L77:
	ldr	r4, .L123+12
	ldr	r2, [r7]
	ldr	r3, [r4]
	add	r2, r2, #1
	cmp	r2, r3
	str	r2, [r7]
	blt	.L121
	bl	check_collide_right.part.0
	ldr	r1, .L123
	ldr	r2, .L123+28
	ldr	r0, [r1]
	ldr	r3, [r4]
	ldr	r1, [r9]
	ldr	r2, [r2]
	b	.L89
.L115:
	mov	r0, #4
	ldr	r2, .L123+84
	ldr	ip, [r7]
	str	r3, [fp]
	str	ip, [r2]
	ldr	r3, .L123+68
	ldr	r2, [r6]
	str	r0, [r1]
	str	r2, [r3]
.L72:
	ldr	r4, .L123+28
	ldr	r3, [r6]
	ldr	r2, [r4]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r6]
	blt	.L122
	bl	check_collide_down.part.0
	ldr	r2, .L123
	ldr	r3, .L123+12
	ldr	r0, [r2]
	ldr	r1, [r9]
	ldr	r2, [r4]
	ldr	r3, [r3]
	b	.L89
.L75:
	cmp	r3, #1
	bne	.L76
	ldr	r2, [r9]
	ldr	r3, [r6]
	cmp	r2, r3
	blt	.L94
	mov	r3, #2
	ldr	r2, [r7]
	str	r3, [r1]
.L79:
	add	r2, r2, #1
	str	r2, [r7]
	b	.L86
.L121:
	ldr	r1, .L123
	ldr	r2, .L123+28
	ldr	r0, [r1]
	ldr	r2, [r2]
	ldr	r1, [r9]
	b	.L89
.L114:
	ldr	r3, .L123+12
	ldr	r2, .L123+28
	ldr	r0, .L123
	ldr	r3, [r3]
	ldr	r0, [r0]
	ldr	r2, [r2]
	b	.L89
.L122:
	ldr	r1, .L123
	ldr	r3, .L123+12
	ldr	r0, [r1]
	ldr	r3, [r3]
	ldr	r1, [r9]
	b	.L89
.L120:
	ldr	r3, .L123+12
	ldr	r2, .L123+28
	ldr	r1, [r9]
	ldr	r3, [r3]
	ldr	r2, [r2]
	b	.L89
.L119:
	ldr	r3, .L123
	ldr	r3, [r3]
	cmp	r3, r2
	blt	.L82
	mov	r2, #1
	ldr	r3, [r6]
	str	r2, [r1]
.L94:
	sub	r3, r3, #1
	str	r3, [r6]
	b	.L86
.L63:
	mov	r0, #2
	str	r0, [r1]
.L62:
	ldr	r0, .L123+96
	ldr	r1, [r0]
	sub	r1, r1, #1
	cmp	r1, #0
	str	r1, [r0]
	bne	.L61
	mvn	r0, #0
	b	.L46
.L65:
	mov	r0, #4
	str	r0, [r1]
	b	.L62
.L67:
	mov	r0, #3
	str	r0, [r1]
	b	.L62
.L66:
	mov	r0, #1
	str	r0, [r1]
	b	.L62
.L84:
	sub	r3, r3, #1
	cmp	r3, #1
	ldrls	pc, [pc, r3, asl #2]
	b	.L86
.L95:
	.word	.L85
	.word	.L79
.L85:
	ldr	r3, [r6]
	b	.L94
.L118:
	ldr	r2, .L123+28
	ldr	r3, [r6]
	ldr	r2, [r2]
	cmp	r2, r3
	bgt	.L81
	mov	r3, #3
	ldr	r2, [r7]
	str	r3, [r1]
.L82:
	sub	r2, r2, #1
	str	r2, [r7]
	b	.L86
.L124:
	.align	2
.L123:
	.word	BOXLEFT
	.word	rRow
	.word	rHeight
	.word	BOXRIGHT
	.word	rCol
	.word	BOXTOP
	.word	rWidth
	.word	BOXBOTTOM
	.word	bWidth
	.word	bHeight
	.word	bCol
	.word	bRow
	.word	collision
	.word	rRDel
	.word	rCDel
	.word	status
	.word	bdir
	.word	bRowRun
	.word	67109120
	.word	.LC0
	.word	mgba_printf
	.word	bColRun
	.word	625
	.word	refresh
	.word	heart_count
	.size	update, .-update
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L141
	ldr	r3, [r4]
	ldr	r7, .L141+4
	cmp	r3, #1
	ldrh	r0, [r7]
	sub	sp, sp, #12
	beq	.L139
.L126:
	str	r0, [sp]
	ldr	r6, .L141+8
	ldr	r4, .L141+12
	ldr	r1, .L141+16
	ldr	r0, .L141+20
	ldr	r5, .L141+24
	ldr	r3, [r6]
	ldr	r2, [r4]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r5
	ldrh	r3, [r7]
	ldr	r10, .L141+28
	str	r3, [sp]
	ldr	r7, .L141+32
	ldr	r1, .L141+36
	ldr	r0, .L141+40
	ldr	r3, [r7]
	ldr	r2, [r10]
	ldr	r1, [r1]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r5
	mov	r1, #31
	ldr	r3, [r6]
	ldr	r2, [r4]
	ldr	fp, .L141+44
	str	r1, [sp]
	ldr	r0, .L141+48
	ldr	r1, [fp]
	ldr	r0, [r0]
	mov	lr, pc
	bx	r5
	mov	r1, #31744
	ldr	r8, .L141+52
	ldr	r9, .L141+56
	ldr	r6, .L141+60
	ldr	r3, [r7]
	ldr	r2, [r10]
	ldr	r0, [r9]
	str	r1, [sp]
	ldr	r1, [r8]
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	cmp	r3, #0
	movgt	r10, #2
	movgt	r4, #0
	ldrgt	r7, .L141+64
	ble	.L130
.L127:
	mov	r3, #5
	mov	r0, r10
	mov	r2, r3
	mov	r1, #2
	str	r7, [sp]
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	add	r4, r4, #1
	cmp	r3, r4
	add	r10, r10, #8
	bgt	.L127
.L130:
	ldr	r3, .L141+68
	ldr	r3, [r3]
	cmp	r3, #2
	ldr	r0, [r9]
	ldr	r1, [r8]
	beq	.L140
.L129:
	ldr	r3, .L141+48
	ldr	ip, .L141+20
	ldr	r2, [r3]
	ldr	r3, [fp]
	str	r2, [ip]
	ldr	r2, .L141+16
	str	r3, [r2]
	ldr	r3, .L141+36
	str	r1, [r3]
	ldr	r3, .L141+40
	str	r0, [r3]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L140:
	ldr	r3, .L141+72
	ldr	r3, [r3]
	sub	r3, r3, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L129
.L132:
	.word	.L135
	.word	.L134
	.word	.L133
	.word	.L131
.L139:
	ldr	r3, .L141+76
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldrh	r0, [r7]
	str	r3, [r4]
	b	.L126
.L131:
	ldr	r3, .L141+80
	ldr	ip, .L141+84
	ldr	lr, [r3]
	ldr	r3, .L141+28
	ldr	r2, [r3]
	sub	r3, r1, lr
	str	ip, [sp]
	mov	r1, lr
	mov	lr, pc
	bx	r5
	ldr	r1, [r8]
	ldr	r0, [r9]
	b	.L129
.L133:
	ldr	r3, .L141+88
	ldr	ip, .L141+84
	ldr	r2, [r3]
	ldr	r3, .L141+32
	sub	r2, r2, r0
	ldr	r3, [r3]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	ldr	r1, [r8]
	ldr	r0, [r9]
	b	.L129
.L134:
	ldr	r3, .L141+88
	ldr	ip, .L141+84
	ldr	lr, [r3]
	ldr	r3, .L141+32
	sub	r2, r0, lr
	ldr	r3, [r3]
	mov	r0, lr
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	ldr	r1, [r8]
	ldr	r0, [r9]
	b	.L129
.L135:
	ldr	r3, .L141+80
	ldr	ip, .L141+84
	ldr	r3, [r3]
	ldr	r2, .L141+28
	sub	r3, r3, r1
	ldr	r2, [r2]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	ldr	r1, [r8]
	ldr	r0, [r9]
	b	.L129
.L142:
	.align	2
.L141:
	.word	refresh
	.word	bgColor
	.word	rWidth
	.word	rHeight
	.word	rOldCol
	.word	rOldRow
	.word	drawRect
	.word	bWidth
	.word	bHeight
	.word	bOldRow
	.word	bOldCol
	.word	rCol
	.word	rRow
	.word	bRow
	.word	bCol
	.word	heart_count
	.word	32767
	.word	status
	.word	bdir
	.word	fillScreen
	.word	bRowRun
	.word	26111
	.word	bColRun
	.size	draw, .-draw
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #992
	ldr	r10, .L153
	ldr	r9, .L153+4
	ldr	r8, .L153+8
	ldr	r7, .L153+12
	ldr	r6, .L153+16
	ldr	r5, .L153+20
	ldr	r4, .L153+24
	sub	sp, sp, #12
.L148:
	ldr	r3, .L153+28
	mov	lr, pc
	bx	r3
	b	.L146
.L144:
	cmn	r0, #1
	beq	.L152
.L146:
	mov	lr, pc
	bx	r10
	ldr	r3, [r9]
	ldr	r2, [r8]
	ldr	r1, [r7]
	ldr	r0, [r6]
	str	fp, [sp]
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L153+32
	mov	lr, pc
	bx	r3
	cmp	r0, #1
	bne	.L144
	mov	r0, #31744
	ldr	r3, .L153+36
	mov	lr, pc
	bx	r3
.L147:
	ldr	r3, .L153+40
	ldrh	r3, [r3, #48]
	tst	r3, #1
	bne	.L147
	b	.L148
.L152:
	mov	r0, #992
	ldr	r3, .L153+36
	mov	lr, pc
	bx	r3
	b	.L147
.L154:
	.align	2
.L153:
	.word	waitForVBlank
	.word	BOXBOTTOM
	.word	BOXTOP
	.word	BOXRIGHT
	.word	BOXLEFT
	.word	drawBoarder
	.word	draw
	.word	initialize
	.word	update
	.word	fillScreen
	.word	67109120
	.size	main, .-main
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	bgColor,2,2
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
