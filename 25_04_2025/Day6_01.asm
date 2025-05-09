.model small
.stack 100h

.data
num db "Enter the number:$"
n db 0
hi db "Hi...$"
bye db "Bye...$"

.code
start:

mov ax,@data
mov ds,ax

mov dx,offset num
mov ah,09h
int 21h

mov ah,01h
int 21h

sub al,48
mov n,al

mov dl,10
mov ah,02h
int 21h

cmp n,5
je msg1
jne msg2

msg1:
mov dx,offset hi
mov ah,09h
int 21h
jmp endn

msg2:
mov dx,offset bye
mov ah,09h
int 21h

endn:
mov ax,4c00h
int 21h

end



mov ax,4c00h
int 21h

end