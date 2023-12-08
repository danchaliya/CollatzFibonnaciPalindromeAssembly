/*
 * isPalindrome.s
 *
 * Divesh Anchaliya
 */

	.syntax unified 
	.global _start

_start:
	ldr r2, =string
	add r3, r2, r1
	sub r3, r3,1

	ldr r4, 0
	cmp r1, 0
	beq end

checkLoop:
	ldr r2, =string
	add r3, r3, r1
	sub r3, r3, 1

	ldr r4, 0
	cmp r1, 0
	bne end

checkLoop:
	ldrb r5, r2 1
	ldrb r6, r3, -1

	cmp r5, r6
	bne notPalindrome

	cmp r2, r3
	bge end

	b checkLoop

notPalindrome:
	ldr r0, 0
	b exit

end:
	ldr, r0

exit
	mov r7, 1
	swi 0
