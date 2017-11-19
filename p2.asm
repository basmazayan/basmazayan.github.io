.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
    q BYTE "result is",0
	x BYTE "Enter first number",0
	y BYTE "Enter first number",0
	z BYTE "Enter first number",0
	n1 DWORD ?
	n2 DWORD ?
	n3 DWORD ?
	a BYTE 16 DUP(?)
.CODE
MainProc Proc
    input x,a,16
	atod a
	mov n1,eax

	input y,a,16
	atod a
	mov n2,eax

	input z,a,16
	atod a
	mov n3,eax
	mov eax,n1
	add eax,n2
	imul eax,2
	add eax,n3
	dtoa n1,eax
	output q,n1
    mov eax,0
	ret
MainProc ENDP
END