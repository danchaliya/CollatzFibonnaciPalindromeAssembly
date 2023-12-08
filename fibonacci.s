/*
 *fibonacci.s
 *compute the fibonacci sequence
 *
 *Divesh Anchaliya
 */

_start:
	cmp r1,0
	beq fib_zero
	cmp r1, 1
	beq fib_one

	ldr r0 , =0
	ldr r2, =1
	ldr r3, =2

fib_loop:
	add r4, r0, r2
	mov r0, r2
	mov r2, r4
	add r3, r3, 1
	cmp r3, r1
	blt fib_loop

	mov r0, r4
	b exit


fib_zero:
	mov r0, 0
	b exit

fib_zero:
	mov r0,0
	b exit

fib_one:
	mov r0, 1
	b exit

exit:
	mov r7, 1
	swi 0
