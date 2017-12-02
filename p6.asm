.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
    w BYTE "Enter number",0
	q BYTE "result is",0
	count DWORD 1
	num DWORD ?
	a BYTE 40 DUP (?)
.CODE
MainProc Proc
     input w,a,40
	 atod a
	 mov num,eax
	 mov ebx,1
	 mov edx,0

  lp1:
     mov ecx,count
	 cmp num,ecx
	 je lp3
	 add ebx,edx
	 mov eax,ebx
	 mov ebx,edx
	 mov edx,eax
	 dtoa a,eax
	 output q,a
	 inc count
	 jmp lp1

  lp3:
     add ebx,edx
	 mov eax,ebx
	 dtoa a,eax
	 output q,a
	 
    mov eax,0
	ret
MainProc ENDP
END