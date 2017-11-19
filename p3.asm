.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
    q BYTE "primeter is",0
	x BYTE "Enter length",0
	y BYTE "Enter width",0
	n1 DWORD ?
	n2 DWORD ?
	a BYTE 16 DUP(?)
.CODE
MainProc Proc
    input x,a,16
	atod a
	mov n1,eax

	input y,a,16
	atod a
	mov n2,eax

	imul eax,2
	mov n2,eax

	mov eax,n1
	imul eax,2
	add eax,n2
	dtoa n2,eax
	output q,n2
    mov eax,0
	ret
MainProc ENDP
END