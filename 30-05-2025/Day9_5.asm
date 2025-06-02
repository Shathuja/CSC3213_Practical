.model small
.stack 100h

.data
msg1 db "Hi$"
msg2 db "Hello$"

.code
main:

mov ax,@data
mov ds,ax

mov dx,offset msg1
mov ah,09h
int 21h

call newline

mov dx,offset msg2
mov ah,09h
int 21h

mov ax,4c00h
int 21h

proc newline
mov dl,10
mov ah,02h
int 21h

ret
endp

end