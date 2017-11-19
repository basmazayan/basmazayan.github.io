.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
    q BYTE "sum is",0
	w BYTE "average is",0
	s BYTE "remainder is",0
	x1 BYTE "Enter first number",0
	x2 BYTE "Enter first number",0
	x3 BYTE "Enter first number",0
	x4 BYTE "Enter first number",0
	n1 DWORD ?
	n2 DWORD ?
	n3 DWORD ?
	n4 DWORD ?
	n5 DWORD ?
	n6 DWORD ?
	a BYTE 16 DUP(?)
.CODE
MainProc Proc
    input x1,a,16
	atod a
	mov n1,eax

	input x2,a,16
	atod a
	mov n2,eax

	input x3,a,16
	atod a
	mov n3,eax

	input x4,a,16
	atod a
	mov n4,eax

    add eax,n3
	add eax,n2
	add eax,n1

	dtoa n1,eax
	output q,n1

    mov edx,0
	mov eax,eax
	mov ecx,4
	div ecx
	dtoa n6,eax
	output w,n6

	dtoa n2,edx
	output s,n2

    mov eax,0
	ret
MainProc ENDP
END