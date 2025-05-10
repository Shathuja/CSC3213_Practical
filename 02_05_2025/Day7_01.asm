.model small
.stack 100h

.data
marks1 db "Enter the marks1:$"
m1 db 0
n1 db 0
dig1 db 0
r1 db ?
marks2 db "Enter the marks2:$"
m2 db 0
n2 db 0
dig2 db 0
r2 db ?
marks3 db "Enter the marks3:$"
m3 db 0
n3 db 0
dig3 db 0
r3 db ?
average db "Average marks:$"
a db 0
ra db ?
sum db 0
msg1 db "pass the exam$"
msg2 db "fail the exam$"


.code
start:

mov ax,@data
mov ds,ax

mov dx,offset marks1
mov ah,09h
int 21h

mov ah,01h
int 21h

sub al,48
mov m1,al

mov ah,01h
int 21h

sub al,48
mov n1,al

mov al,m1
mov bl,10
mul bl
add al,n1
mov dig1,al



mov dl,10
mov ah,02h
int 21h

mov dx,offset marks2
mov ah,09h
int 21h

mov ah,01h
int 21h

sub al,48
mov m2,al

mov ah,01h
int 21h

sub al,48
mov n2,al

mov al,m2
mov bl,10
mul bl
add al,n2
mov dig2,al

mov dl,10
mov ah,02h
int 21h



mov dx,offset marks3
mov ah,09h
int 21h

mov ah,01h
int 21h

sub al,48
mov m3,al

mov ah,01h
int 21h

sub al,48
mov n3,al

mov al,m3
mov bl,10
mul bl
add al,n3
mov dig3,al


mov dl,10
mov ah,02h
int 21h


mov al,dig1
add al,dig2
add al,dig3
mov sum,al

mov al,sum
mov ah,00
mov bl,3
div bl
mov a,al



mov dx,offset average
mov ah,09h
int 21h

mov al,a
mov ah,00
mov bl,10
div bl
mov ra,ah
mov dl,al
add dl,48
mov ah,02h
int 21h
mov dl,ra
add dl,48
mov ah,02h
int 21h

mov dl,10
mov ah,02h
int 21h
mov bl,a

cmp bl,50
jge greater

less:
mov dx,offset msg2
mov ah,09h
int 21h
jmp endn

greater:
mov dx,offset msg1
mov ah,09h
int 21h



endn:
mov ax,4c00h
int 21h

end



