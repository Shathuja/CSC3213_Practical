;use a loop to display factorial of  numbers from 1 to 5

.model small
.stack 100h

.data
factorial db 1
r1 db 0
r2 db 0

.code
start:

mov ax,@data
mov ds,ax

mov cl,5
mov bl,1

lstart:
mov al,factorial
mul bl
mov factorial,al

inc bl
loop lstart

mov ah,00
mov al,factorial
mov bl,100
div bl
mov r1,ah

mov dl,al
add dl,48
mov ah,02h
int 21h

mov ah,00
mov al,r1
mov bl,10
div bl
mov r2,ah

mov dl,al
add dl,48
mov ah,02h
int 21h

mov dl,r2
add dl,48
mov ah,02h
int 21h




mov ax,4c00h
int 21h

end