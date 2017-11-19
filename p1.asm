.586
.MODEL FLAT
INCLUDE io.h
.STACK
.DATA
    w BYTE "result is",0
    x BYTE "Enter first number",0
	y BYTE "Enter second number",0
	z BYTE "Enter third number",0
	n1 DWORD ?
	n2 DWORD ?
	n3 DWORD ?
	a BYTE 16 DUP (?)
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
	imul eax,-2
	add eax,1
	
	add eax,n2
	add eax,n1
	neg eax

	dtoa n3,eax
	output w,n3

    mov eax,0
	ret
MainProc ENDP
END