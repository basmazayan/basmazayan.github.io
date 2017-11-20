.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
    w BYTE "weighted sum is",0
	g BYTE "Sum Of Weights",0
	q BYTE "average is",0
    a1 BYTE "Enter grade1",0
	a2 BYTE "Enter grade2",0
	a3 BYTE "Enter grade3",0
	a4 BYTE "Enter grade4",0
    b1 BYTE "Enter weight1",0
    b2 BYTE "Enter weight2",0
	b3 BYTE "Enter weight3",0
	b4 BYTE "Enter weight4",0
	x1 DWORD ?
	x2 DWORD ?
	x3 DWORD ?
	x4 DWORD ?
	y1 DWORD ?
	y2 DWORD ?
	y3 DWORD ?
	y4 DWORD ?
	c1 DWORD ?
	c2 DWORD ?
	c3 DWORD ?
	c4 DWORD ?
	c5 BYTE  11 DUP(?)
	y5 DWORD ?
	z BYTE 11 DUP(?)
.CODE
MainProc Proc
    input a1,z,11
	atod z
	mov x1,eax
	input b1,z,11
	atod z
	mov y1,eax

	imul x1
	mov c1,eax
;	output w,c1

    input a2,z,11
	atod z
	mov x2,eax
	input b2,z,11
	atod z
	mov y2,eax

	imul x2
	add eax,c1
	mov c1,eax

	input a3,z,11
	atod z
	mov x3,eax
	input b3,z,11
	atod z
	mov y3,eax

	imul x3
	add eax,c1
	mov c1,eax

	input a4,z,11
	atod z
	mov x4,eax
	input b4,z,11
	atod z
	mov y4,eax

	imul x4
	add eax,c1
	dtoa c1,eax
	output w,c1    ; weight sum
	;mov ebx,eax

	mov eax,y1
	add eax,y2
	add eax,y3
	add eax,y4
	dtoa c4,eax
	output g,c4    ; sum of weight
	
    mov edx,0
	;atod c1
	mov eax,c1
	;atod c4
	mov ecx,c4
	div ecx
	dtoa c5,eax
	output q,c5

    mov eax,0
	ret
MainProc ENDP
END