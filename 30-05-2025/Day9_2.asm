;use a loop to display numbers from 1 to 5(eg: 1 2 3 4 5)

.model small
.stack 100h

.data
n db 5
space db " $"


.code
main:

mov ax,@data
mov ds,ax

mov cl,n
mov bl,1

printloop:
mov dl,bl
add dl,48
mov ah,02h
int 21h

mov dx,offset space
mov ah,09h
int 21h


inc bl
loop printloop

mov ax,4c00h
int 21h



end
