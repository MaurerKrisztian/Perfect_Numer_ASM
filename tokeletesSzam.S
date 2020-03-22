.intel_syntax noprefix
.section .data

.section .text

.global perfectNumber
perfectNumber:  //perfectNumber(int x);  1 = true, 0 = false

	push ebp
	mov ebp, esp

	push ebx //cdecl konvencio valtozomentes


	mov ecx, 1	//ciklusvaltozo
	xor ebx, ebx  //ebx= osztok osszeg

loop:
	xor edx, edx //maradek torles

	mov eax, [ebp + 8] //1. parameter
	cmp eax, ecx
	jle exit

	div ecx	//EDX:EAX
	cmp edx, 0  // maradek == 0
	je summ

	inc ecx
	jmp loop

summ:
	add ebx, ecx
	inc ecx
	jmp loop

exit:
	cmp ebx, eax
	je perfectnumber
	jne notperfectnumber


notperfectnumber:
	mov eax, 0 //0 = false
	jmp epilogus


perfectnumber:
	mov eax, 1 //1 = true
	jmp epilogus

epilogus:
	pop ebx //cdecl konvencio valtozovisszaalitas
	mov esp, ebp
	pop ebp
	ret
