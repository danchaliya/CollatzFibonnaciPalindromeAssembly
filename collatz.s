/*
 *collatz.s
 *Computes the collatz sequence length for a given number 
 *
 *Divesh Anchaliya
 */



	.text
	.global _start
	.syntax unified 
	
_start: 
	mov r1,0
	cmp r0, 1
	beq end 

loop:
	and r2, r0, 1
	cmp r2, 0
	beq even
	b odd

even:
	lsr r0, r0, 1
	b increment_counter

odd:
	add r0, r0, r0, lsl 1
	add r0, r0, 1
	b increment_counter

increment_counter:
	add r1, r1, 1
	cmp r0, 1
	bne loop

end:
	mov r0,r1
	bx lr

