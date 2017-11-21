.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
    q BYTE "Dollars are",0
  ;  z BYTE  34 DUP (?),'D','o','l','l','a','r'
	w BYTE "Cents are",0
    x1 BYTE "Enter pennies coins",0
	x2 BYTE "Enter nickles coins",0
	x3 BYTE "Enter dimes coins",0
	x4 BYTE "Enter quarter coins",0
	x5 BYTE "Enter fifty-cent coins",0
	x6 BYTE "Enter dollar coins",0
	n1 DWORD ?
	n2 DWORD ?
	n3 DWORD ?
	n4 DWORD ?
	n5 DWORD ?
	n6 DWORD ?
	n7 BYTE 40 DUP(?)
	n8 BYTE 40 DUP(?)
	a BYTE 11 DUP (?)
.CODE
MainProc Proc
    input x1,a,11
	atod a
	mov n1,eax
	
	input x2,a,11
	atod a
	mov n2,eax
	imul eax,5
	add eax,n1
	mov n1,eax

	input x3,a,11
	atod a
	mov n3,eax
	imul eax,10
	add eax,n1
	mov n1,eax
    
	input x4,a,11
	atod a
	mov n4,eax
	imul eax,25
	add eax,n1
	mov n1,eax
    
	input x5,a,11
	atod a
	mov n5,eax
	imul eax,50
	add eax,n1
	mov n1,eax

	input x6,a,11
	atod a
	mov n6,eax
	imul eax,100
	add eax,n1
	mov n1,eax
    
	mov edx,0
	mov eax,n1
	mov ecx,100
	div ecx
	dtoa n7,eax
	output q,n7

	dtoa n8,edx
	output w,n8
    mov eax,0
	ret
MainProc ENDP
END 