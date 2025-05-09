.model small
.stack 100h

.data
num db "Enter the single digit number:$"
true db "even$"
false db "odd$"
n db 0
r db ?

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


mov ah,00
mov al,n
mov bl,2
div bl
mov r,ah


cmp r,0
je msg1
jne msg2

msg1:
mov dx,offset true
mov ah,09h
int 21h
jmp endn

msg2:
mov dx,offset false
mov ah,09h
int 21h

endn:
mov ax,4c00h
int 21h

end