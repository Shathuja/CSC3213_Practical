;use a loop to display sum of  numbers from 1 to 5

.model small
.stack 100h

.data
sum db 0
r db ?

.code
main:

mov ax,@data
mov ds,ax

mov cl,5
mov bl,1

lstart:
mov dl,sum
add dl,bl
mov sum,dl

inc bl
loop lstart

mov ah,00
mov al,sum
mov bl,10
div bl
mov r,ah
mov dl,al
add dl,48
mov ah,02h
int 21h


mov dl,r
add dl,48
mov ah,02h
int 21h

mov ax,4c00h
int 21h



end
