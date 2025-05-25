.model small
.stack 100h

.data
num1 db "Enter the number1:$"
n1 db 0
num2 db "Enter the number2:$"
n2 db 0
num3 db "Enter the number3:$"
n3 db 0
msg db "greayer number is:$"

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

mov dx,offset num3
mov ah,09h
int 21h

mov ah,01h
int 21h

sub al,48
mov n3,al

mov dl,10
mov ah,02h
int 21h

mov al,n1
cmp al,n2
jge n111
jl  n222

n111:
cmp al,n3
jge nn111


nn111:
mov dx,offset msg
mov ah,09h
int 21h

mov dl,n1
add dl,48
mov ah,02h
int 21h
jmp endn


mov al,n2
n222:
cmp al,n3
jge n2222
jl  n3333333

n2222:
mov dx,offset msg
mov ah,09h
int 21h

mov dl,n2
add dl,48
mov ah,02h
int 21h
jmp endn


n3333333:
mov dx,offset msg
mov ah,09h
int 21h

mov dl,n3
add dl,48
mov ah,02h
int 21h
jmp endn



endn:
mov ax,4c00h
int 21h

end