.model small
.stack 100h

.data
num db "Enter the three digit number:$"
n1 db 0
n2 db 0
n3 db 0
print db "print the number:$"
dig1 db 0
dig2 db 0
r1 db ?
r2 db ?

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
mov n1,al

mov ah,01h
int 21h

sub al,48
mov n2,al

mov ah,01h
int 21h

sub al,48
mov n3,al

mov dl,10
mov ah,02h
int 21h

mov dx,offset print
mov ah,09h
int 21h

mov al,n1
mov bl,100
mul bl
mov dig1,al
mov al,n2
mov bl,10
mul bl
add al,dig1
add al,n3
mov dig2,al


mov ah,00
mov al,dig2
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
