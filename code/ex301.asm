assume cs:code
code segment
main proc far
	mov cx, 11
	mov bl, 20h
s1: push cx
	mov cx, 20
s2:	inc bl
	mov ah, 02h
	mov dl, bl
	int 21h
	mov dl, 0
	int 21h
	loop s2
	pop cx
	mov dl, 13
	int 21h
	mov dl, 10
	int 21h
	loop s1
	ret
main endp
code ends
end main
	