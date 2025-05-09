.model small
.stack 100h

.data
num1 db "Enter the number1:$"
n1 db 0
num2 db "Enter the number2:$"
n2 db 0
gre db "greater number:$"

.code
start:

mov ax,@data
mov ds,ax

mov dx,offset num1
mov ah,09h
int 21h

mov ah,01h
int 21h

sub al,48
mov n1,al

mov dl,10
mov ah,02h
int 21h

mov dx,offset num2
mov ah,09h
int 21h

mov ah,01h
int 21h

sub al,48
mov n2,al

mov dl,10
mov ah,02h
int 21h

mov bl,n1
cmp bl,n2
jg true

false:
mov dx,offset gre
mov ah,09h
int 21h

mov dl,n2
add dl,48
mov ah,02h
int 21h
jmp endn



true:
mov dx,offset gre
mov ah,09h
int 21h

mov dl,bl
add dl,48
mov ah,02h
int 21h



endn:
mov ax,4c00h
int 21h

end
